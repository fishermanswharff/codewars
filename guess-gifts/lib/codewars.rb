require 'pry'

def guess_gifts(wishlist, presents)
  possible_presents = []
  presents.map do |present|
    matches = wishlist.map do |wish|
      wish_values = wish.values
      wish_values.shift
      possible_presents << wish[:name] if wish_values == present.values
    end
  end
  possible_presents.uniq.sort
end






=begin

Possible values for size: "small", "medium", "large"
Possible values for clatters: "no", "a bit", "yes"
Possible values for weight: "light", "medium", "heavy"



# matches = wishlist.map { |wish| wish if wish.values.include?(present[:size]) && wish.values.include?(present[:clatters]) && wish.values.include?(present[:weight])}.compact
# matches.map { |match| possible_presents << match[:name] }
=end

