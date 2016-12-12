#Build encryption program
def encrypt(str)
  index = 0
  while index < str.length
    if str[index] == "z"
      str[index] = "a"
    else
      str[index] = str[index].next
    end
    index += 1
  end
  p str
end

encrypt("abc")
encrypt("zed") 

#Build decryption program
def decrypt(str2)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  alpha = alpha.reverse!
  index2 = 0
  alpha_index = 0
  while index2 < str2.length
    alpha_index = 0
    while str2[index2] != alpha[alpha_index]
      alpha_index += 1
    end

    if alpha[alpha_index] == "a"
      str2[index2] = "z"
    else str2[index2] = alpha[alpha_index + 1]
    end
    index2 += 1
  end
  p str2
end

decrypt("bcd") 
decrypt("afe") 

decrypt(encrypt("swordfish"))

#Take input from user to run encryption or decryption program
answer = ""
until answer == "encrypt" or answer == "decrypt"
  puts "Would you like to encrypt or decrypt a password (enter 'encrypt' or 'decrypt)?"
  answer = gets.chomp
end

puts "What password would you like encrypted or decrypted?"
  password = gets.chomp

if answer == "encrypt"
  str = password
  encrypt(str)
  else answer == "decrypt"
    str2 = password
    decrypt(str2)
end

exit


