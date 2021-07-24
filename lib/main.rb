# frozen_string_literal: true

require_relative 'caesar_cipher'

def input_message
  puts 'Enter a message you want to encrypt'
  gets.chomp
end

def input_key
  puts 'Enter a key - any positive integer number'
  key = gets.chomp.to_i
  while key <= 0
    puts 'Key must be a positive integer. Try once more'
    key = gets.chomp.to_i
  end
  key
end

def output(message, key)
  puts '-------------------------------------------'
  puts 'Your encrypted message:'
  puts caesar_cipher(message, key)
  puts '-------------------------------------------'
  puts "Pass it to your recipient with a key: #{key}"
end

output(input_message, input_key)
