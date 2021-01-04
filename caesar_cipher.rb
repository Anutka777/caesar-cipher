def caesar_cipher(string, key)
  key = key % 25
  string_array = string.split('')
  result_array = []
  string_array.each do |char|
    if char =~ /[a-zA-Z]/
      if (char.ord + key) > 122
        char = (97 + (char.ord + key) - 123).chr
      elsif (char.ord + key) > 90 and (char.ord + key) < 97
        char = (65 + (char.ord + key) - 91).chr
      else
        char = (char.ord + key).chr
      end
    end
    result_array.push(char)
  end
  result_array.join()
end

# p caesar_cipher("What a string!", 5)
# p caesar_cipher("1  684 44", 4)
# p caesar_cipher(">?@ - AB=CDE|FGH-56qIJ,,KL.MN//O+P;QRS'TUVW", 115)
# p caesar_cipher("abcdefghijklmnopq", 503)
# p caesar_cipher("abcdefghijklmnopq", 3)