# frozen_string_literal: true

def caesar_cipher(message, key)
  key = key % 26
  result_array = []
  message.split('').each do |char|
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
