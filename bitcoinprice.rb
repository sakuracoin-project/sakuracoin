#!/usr/bin/ruby
require 'json'
require 'base64'
require 'digest/md5'

def api(url)
  cfn = '/tmp/' + Base64::encode64(Digest::MD5.digest(url))[0, 12]
  res = nil
  now = Time.now
  mtime = now
  if File.exist?(cfn)
    mtime = File.stat(cfn).mtime
    expire = mtime + 120
    if now < expire
      res = File.open(cfn, 'r'){|fd|fd.read}
    end
  end
  unless res
    res = `curl -s #{url}`
    File.open(cfn, 'w'){|fd|fd.write(res)}
  end
  [JSON.parse(res), mtime]
end

res = api('http://pubapi.cryptsy.com/api.php?method=marketdatav2')[0]
res2 = api('https://data.mtgox.com/api/2/BTCUSD/money/ticker')[0]
res3 = api('http://api.aoikujira.com/kawase/json/usd')[0]

usdjpy = res3['JPY'].to_f
data = res2['data']
btcusd = data['avg']['value'].to_f
btcjpy = (btcusd * usdjpy).to_i
puts "USD/JPY %18.9f" % usdjpy
puts "BTC/USD %18.9f" % btcusd
puts "BTC/JPY %18.9f" % btcjpy
if res['success'] == 1
  markets = res['return']['markets']
  markets.keys.each do |key|
    price = markets[key]['lasttradeprice'].to_f
    if /BTC$/ === key
      if /^TAG/ === key
        puts "%s %18.9f" % [key, price]
        puts "TAG/USD %18.9f" % [price * btcusd]
        puts "TAG/JPY %18.9f" % [price * btcjpy]
      end
    end
  end
end
