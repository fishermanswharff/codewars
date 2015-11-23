require 'pry'

def solution(input, markers)
  result = input.clone
  markers.each do |marker|
    if result.include?(marker)
      result = result.split("\n").map {|string| string.include?(marker) ? string.gsub(/#{Regexp.escape(marker)}.+/,'').chomp(' ') : string }.join("\n")
    end
  end
  result
end
