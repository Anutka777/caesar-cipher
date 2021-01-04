def caesar_cipher(string, key)
  key = key % 25
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

# p caesar_cipher("What a string!", 5)
# p caesar_cipher("1  684 44 0", 4)
# p caesar_cipher(">?@ - AB=CDE|FGH-56qIJ,,KL.M`N//O+P;QR~S'TUVW{_}XYZ", 1)
# p caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 23)
# p caesar_cipher("abcdefghijklmnopqrstuvwxyz", 503)
# p caesar_cipher("abcdefghijklmnopqrstuvwxyz", 3)
# p caesar_cipher("Z", 7)
# p caesar_cipher("z", 7)