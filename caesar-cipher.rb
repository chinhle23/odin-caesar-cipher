def caesar_cipher(string, number)
  alphabet = []
  cipheredArr = []
  ('a'..'z').each { |letter| alphabet.push(letter) }
  stringArr = string.split('')
  stringArr.each do |char| 
    cipheredArr.push(alphabet.include?(char.downcase) ? 
      char.downcase == char ? 
        alphabet[alphabet.index(char.downcase) + number - alphabet.length] :
        alphabet[alphabet.index(char.downcase) + number - alphabet.length].upcase :
      char)
  end
  cipheredArr.join('')
end

p caesar_cipher("What a string!", 5) # "Bmfy f xywnsl!" 