require 'pry'

class WordDictionary

  def initialize
    @list = []
    # @dictionary = {}
  end

  def add_word(word)
    @list << word
    # @dictionary[string[0]] ? @dictionary[string[0]].push(string) : @dictionary[string[0]] = [string]
  end

  def search(string)
    for item in @list
      if item.match(Regexp.new("^#{string}$")) then return true end
    end
    return false
    # @dictionary[string[0]] ? !!@dictionary[string[0]].detect { |word| word =~ /(?=(#{string}))/ && word.match(string).to_s == word } : !!@dictionary.values.flatten.detect { |word| word =~ /(?=(#{string}))/ && word.match(string).to_s == word }
  end
end

# if @dictionary[string[0]]
#   result = @dictionary[string[0]].detect do |word|
#     word.scan(/(?=(#{string}))/).flatten.join == word
#   end
#   result ? true : false
# else
#   false
# end
# # @dictionary[string[0]] ? @dictionary[string[0]].detect { |word| word.scan(/(?=(#{string}))/).length > 0 }.length > 0 : false
