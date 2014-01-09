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

['sha1coin'].each do |type|
  begin
    File.open("#{ENV['HOME']}/.#{type}/blocks/blk00000.dat", 'rb') do |fd|
      loop do
        magicno = fd.read(4)
        #raise unless magicno == "\xF9\xBE\xB4\xD9" # for bitcoin
        break unless magicno == "\xFB\xC0\xB6\xDB" # for litecoin
        blocksize = fd.read(4).unpack("V").first
        blockheader = fd.read(80)
        size, transactionc = readvarint(fd)
        transactions = fd.read(blocksize - 80 - size)
p [blocksize, size, transactionc]
      end
    end
  rescue => e
p [type, e]
raise e
    next
  end
end
