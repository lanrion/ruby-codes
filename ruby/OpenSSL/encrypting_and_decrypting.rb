require "openssl"

# data = "Very, very confidential data"
data = "测试"

cipher = OpenSSL::Cipher::AES.new(256, :CBC)
cipher.encrypt
key = cipher.random_key
iv = cipher.random_iv

encrypted = cipher.update(data) + cipher.final

decipher = OpenSSL::Cipher::AES.new(256, :CBC)
decipher.decrypt
decipher.key = key
decipher.iv = iv

plain = decipher.update(encrypted) + decipher.final

puts plain

puts data

puts data == plain #=> true
