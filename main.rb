# Imports
require 'base64'
require 'digest/sha1'
require 'digest/md5'
require 'base32'

puts "Welcome to superEncode or sEn for short!"
print "Enter Message: "
word = gets

# Encoding

code = Base32.encode(Base64.encode64(Base64.encode64(Digest::MD5.hexdigest(Digest::SHA1.hexdigest(Base64.encode64(Digest::MD5.hexdigest((Digest::SHA1.hexdigest(Base64.encode64(Digest::MD5.hexdigest(Digest::SHA1.hexdigest(Base64.encode64(Digest::MD5.hexdigest(Digest::SHA1.hexdigest(Base64.encode64(Digest::MD5.hexdigest(Digest::SHA1.hexdigest(word))))))))))))))))))


puts "Your Encoded Message: " + code
puts "There is no way to decode this. (Sorry!)"
