#!/usr/bin/ruby
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

  puts
  puts type

  #req = {"method" => "setgenerate", "params" => [false]}

  req = {"method" => "getinfo"}
  res = rpcrequest(rpcuser, password, host, port, req)
  next unless res
  result = res['result']
  error = res['error']
  id = res['id']

  balance = result["balance"]
  blocks = result["blocks"]
  connections = result["connections"]
  difficulty = result["difficulty"]
  paytxfee = result["paytxfee"]
  mininput = result["mininput"]
  puts "B:%9.3f B:%d C:%d D:%f" % [balance, blocks, connections, difficulty]

  req = {"method" => "listtransactions"}
  res = rpcrequest(rpcuser, password, host, port, req)
  next unless res
  result = res['result']
  error = res['error']
  id = res['id']
  (result[-4..-1] or []).each do |tx|
    account = tx["account"]
    address = tx["address"]
    category = tx["category"]
    amount = tx["amount"]
    confirmations = tx["confirmations"]
    time = Time.at(tx["time"])
    timereceived = Time.at(tx["timereceived"])
    puts "%s %f %s %d" % [time, amount, category, confirmations]
  end

end
