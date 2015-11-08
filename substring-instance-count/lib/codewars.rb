require 'pry'

def search_substr(fullText, searchText, allowOverlap = true)
  return 0 if fullText.length == 0 || searchText.length == 0
  # solution from codewars
  fullText.scan(allowOverlap ? /(?=#{searchText})/ : searchText).length
end


# FIRST SOLUTION
# matches = fullText.scan(searchText).map { |string| string if string.length > 0 }
# if allowOverlap
#   search_length = searchText.length
#   end_index = fullText.index(searchText) + search_length - 1
#   fullText[end_index + 1] == fullText[end_index] ? matches.push(searchText) : matches
# end
# matches.length
