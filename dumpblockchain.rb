#!/usr/bin/ruby

def readvarint(fd)
  head = fd.read(1)
  v = head.unpack("C").first
  if v < 0xFD
    [1, v]
  elsif v == 0xFD
    v = fd.read(2).unpack("v").first
    [3, v]
  elsif v == 0xFE
    v = fd.read(4).unpack("V").first
    [5, v]
  else
    v = fd.read(8).unpack("VV")
    [9, v[0] | (v[1] << 32)]
  end
end

def bits2diff(bits)
  max_body = Math.log(0x00ffff)
  scaland = Math.log(256)
  Math.exp(max_body - Math.log(bits & 0x00ffffff) +
      scaland * (0x1d - ((bits & 0xff000000) >> 24)))
end

['sakuracoin', 'sha1coin'].each do |type|
  begin
    days = {}
    File.open("#{ENV['HOME']}/.#{type}/blocks/blk00000.dat", 'rb') do |fd|
      height = 0
      loop do
        magicno = fd.read(4)
        #raise unless magicno == "\xF9\xBE\xB4\xD9" # for bitcoin
        break unless magicno == "\xFB\xC0\xB6\xDB" # for litecoin
        blocksize = fd.read(4).unpack("V").first
        blockheader = fd.read(80)
        version, prev, root, t, bits, n = blockheader.unpack('Va32a32VVV')
        t = Time.at(t)
        size, transactionc = readvarint(fd)
        transactions = fd.read(blocksize - 80 - size)
days[t.strftime('%Y-%m-%d')] ||= {}
day = days[t.strftime('%Y-%m-%d')]
day[:diff] = bits2diff(bits)
day[:transactionc] ||= 0
day[:transactionc] += transactionc
day[:blocks] ||= 0
day[:blocks] += 1
day[:height] = height
#p [t, bits2diff(bits), transactionc, height] if transactionc > 0
        height += 1
#break if height > 150
File.open('blkhd.tmp', 'w'){|fd|fd.write(blockheader)}
x = `./scryptsum < blkhd.tmp`
p x.unpack("h*")[0]
      end
    end
    days.each do |day, val|
#p [day, val[:diff]]
diff = val[:diff]
blocks = val[:blocks]
hashrate = diff * 2**32 * blocks / (24 * 60 * 60.0)
puts "%s %4d %9.3f %9.6f" % [day, val[:blocks], hashrate / 1000, diff]
    end
  rescue => e
p [type, e]
raise e
    next
  end
  break
end
