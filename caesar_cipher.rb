puts "Enter a message you want to encrypt"
string = gets.chomp
puts "Enter a key - any positive integer number"
key = gets.chomp.to_i
while key <= 0
  puts "Key must be a positive integer. Try once more"
  key = gets.chomp.to_i
end

def caesar_cipher(string, key)
  key = key % 26
  string_array = string.split('')
  result_array = []
  string_array.each do |char|
    if char =~ /[a-z]/
      if (char.ord + key) > 122
        new_char = (97 + char.ord + key - 123).chr
      else
        new_char = (char.ord + key).chr
      end
    elsif char =~ /[A-Z]/
      if (char.ord + key) > 90
        new_char = (65 + char.ord + key - 91).chr
      else
        new_char = (char.ord + key).chr
      end
    else
        new_char = char
    end
    result_array.push(new_char)
  end
  result_array.join('')
end

puts "-------------------------------------------"
puts "Your encrypted message:"
puts caesar_cipher(string, key)
puts "-------------------------------------------"
puts "Pass it to your recipient with a key: #{key}"

# p caesar_cipher("What a string!", 5)
# p caesar_cipher("1  684 44 0", 4)
# p caesar_cipher(">?@ - AB=CDE|FGH-56qIJ,,KL.M`N//O+P;QR~S'TUVW{_}XYZ", 1)
# p caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 25)
# p caesar_cipher("abcdefghijklmnopqrstuvwxyz", 55)
# p caesar_cipher("abcdefghijklmnopqrstuvwxyz", 3)
# p caesar_cipher("Z", 7)
# p caesar_cipher("z", 7)