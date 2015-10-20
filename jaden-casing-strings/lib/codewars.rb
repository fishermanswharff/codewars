require 'pry'

class String
  def to_jaden_case
    # self.split(' ').map { |word| word[0].upcase + word[1..-1] }.join(' ')
    # self.split(' ').map(&:capitalize).join(' ')
    self.split(' ').map(&:capitalize)*' '
  end
end