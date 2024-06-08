# frozen_string_literal: true

def caesar_cipher(string, number)
  alphabet = []
  ciphered_arr = []
  ('a'..'z').each { |letter| alphabet.push(letter) }
  string_arr = string.split('')
  string_arr.each do |char|
    ciphered_arr.push(alphabet.include?(char.downcase) ? if char.downcase == char
                                                           alphabet[alphabet.index(char.downcase) + number - alphabet.length]
                                                         else
                                                           alphabet[alphabet.index(char.downcase) + number - alphabet.length].upcase
                                                         end : char)
  end
  ciphered_arr.join('')
end
