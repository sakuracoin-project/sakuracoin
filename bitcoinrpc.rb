#!/usr/bin/ruby
# encoding: utf-8
require 'json'
TYPE2CONF = {
  'namecoin' => 'bitcoin',
}
TYPE2PORT = {
  'bitcoin' => 8332,
  'namecoin' => 9332,
  'TagCoin' => 9624,
  #'monacoin' => 9302,
  'sakuracoin' => 9302,
  'sha1coin' => 9512,
}

def rpcrequest(rpcuser, password, host, port, req)
  res = `curl -s -u #{rpcuser}:#{password} #{host}:#{port} -d '#{req.to_json}'`
  res.size == 0 ? nil : JSON.parse(res)
end

now = Time.now
fd = File.open("_posts/%s-Info.md" % now.strftime('%Y-%m-%d-%H'), 'w')

fd.puts "---"
fd.puts "layout: default"
fd.puts "title: %H:%M の状態" % now.strftime('%H:%M'))
fd.puts "---"
fd.puts("# %s の状態" % now.strftime('%Y/%m/%d %H:%M'))

TYPE2PORT.keys.each do |type|
  setting = {}
  begin
    conf = "#{TYPE2CONF[type] or type}.conf"
    rc = File.open("#{ENV['HOME']}/.#{type}/#{conf}", 'r'){|fd|fd.read}
    rc.split.each do |line|
      next if line[0] == '#'
      k, v = line.split('=')
      setting[k] = v
    end
  rescue
    next
  end
  rpcuser = setting['rpcuser'] or ''
  password = setting['rpcpassword'] or ''
  host = 'localhost'
  port = (setting['rpcport'] or TYPE2PORT[type]).to_i

  #req = {"method" => "setgenerate", "params" => [false]}

  req = {"method" => "getinfo"}
  res = rpcrequest(rpcuser, password, host, port, req)
  next unless res
  fd.puts
  fd.puts "## %s" % type

  result = res['result']
  error = res['error']
  id = res['id']

  balance = result["balance"]
  blocks = result["blocks"]
  connections = result["connections"]
  difficulty = result["difficulty"]
  paytxfee = result["paytxfee"]
  mininput = result["mininput"]

  fd.puts "* ブロックチェインの高さ: %d ブロック" % blocks
  fd.puts "* ブロックチェインの成長速度: N/A"
  fd.puts "* 採掘難易度: %9.3f" % difficulty
  fd.puts "* 次回採掘難易度変更: 残り N/A ブロック"
  fd.puts "* シードノードへの接続ノード数: %d" % connections

end

fd.close
