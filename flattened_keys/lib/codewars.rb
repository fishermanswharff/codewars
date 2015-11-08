require 'pry'

class Hash
  def flattened_keys
    while values.any? {|v| v.is_a? Hash } do
      v = values.detect { |v| v.is_a? Hash }
      key = key(v)
      delete(key)
      store(key,v) unless v.is_a? Hash
      v.keys.each { |k| store(k.is_a?(String) || key.is_a?(String) ? "#{key.to_s}_#{k.to_s}" : "#{key.to_s}_#{k.to_s}".to_sym, v[k]) } if v.is_a? Hash
      return self unless values.any? {|v| v.is_a? Hash }
      flattened_keys
    end
    self
  end
end

=begin
self.values.map do |v|
  next unless v.class == Hash
  key = self.key(v)
  self.delete(key)
  v.keys.each { |k| self.store("#{key.to_s}_#{k.to_s}".to_sym, v[k]) }
  self.flattened_keys
end
self

# self.values.map do |v|
#   key = self.key(v)
#   if v.is_a? Hash
#     new_keys = v.keys.map { |k| self.store("#{key.to_s}_#{k.to_s}".to_sym, v[k]) }
#     self.delete(key)
#     binding.pry
#   else
#     self.delete(key)
#     self.store(key,v)
#   end
#   self.flattened_keys
# end
# self


# self.values.each do |v|
#   key = self.key(v)
#   self.delete(key)
#   self.store(key,v) unless v.is_a? Hash
#   next unless v.is_a? Hash
#   puts key, v
#   v.keys.each { |k| self.store("#{key.to_s}_#{k.to_s}".to_sym, v[k]) }
#   self.flattened_keys if self.values.any? {|v| v.is_a? Hash }
# end


=end
