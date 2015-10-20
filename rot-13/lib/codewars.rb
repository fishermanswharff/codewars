require 'pry'

def rot13 string
  alphabet = ('a'..'z').to_a
  cipher = string.split(' ').map do |word|
    word.chars.map do |letter|
      if letter.downcase.match(/[A-Za-z]/)
        index = alphabet.index(letter.downcase)
        length = alphabet.length
        downcase = letter =~ /[a-z]/
        index + 13 >= length ? downcase ? alphabet.at((index + 13) - length) : alphabet.at((index + 13) - length).upcase : downcase ? alphabet.at(index + 13) : alphabet.at(index + 13).upcase
      else
        letter
      end
    end
  end
  cipher.length > 1 ? cipher.map { |word| word.join('') }.flatten.join(' ') : cipher.flatten.join('')
end



=begin

first solution:
————————————————
alphabet = ('a'..'z').to_a
array_of_words = string.split(' ')
ciphered = array_of_words.map do |word|
  array = word.split('')
  array.map do |l|
    if l.downcase.match(/[A-Za-z]/)
      d = l.downcase
      index = alphabet.index(d)
      alpha_len = alphabet.length
      downcase = l =~ /[a-z]/
      if index + 13 >= alpha_len
        downcase ? alphabet.at((index + 13) - alpha_len) : alphabet.at((index + 13) - alpha_len).upcase
      else
        downcase ? alphabet.at(index + 13) : alphabet.at(index + 13).upcase
      end
    else
      l
    end
  end
end
ciphered.length > 1 ? ciphered.map { |word| word.join('') }.flatten.join(' ') : ciphered.flatten.join('')


=end
