# #Build a class called Dictionary
# #You are not allowed to use attr_acessor with this class.
# This means that you need to build manual getters/setters!
# This class has the following attributes as @instance_variables:
# @internal_hash
# This class has the following abilities:
# get_dictionary that returns @internal_hash
# add that accepts two arguments: :key and value. You will then add these to your @internal_hash
# to_s that returns the @internal_hash as a string (consider using .each here)
# to_json that returns the @internal_hash as a JSON object.
# Note: Don't forget to require 'json' in your code!
# Test these methods to verify they work in your code.
# Add a 404 key with a value of womp womp - the page doesn't exist
# Add a 403 key with a value of DENIED ACCESS
# Add a 500 key with a value of SERVER ERROR OH NOES
# Output the Dictionary as JSON using the method you built.
# Save this in a file called dictionary_class.rb
class Dictionary
require 'json'


  def initialize
    @internal_hash:{}
  end

  def get_dictionary
    return @internal_hash
  end

  def add(a,b)
    return internal_hash.merge!(a:"b")
  end

  def to_s
    @internal_hash.each do |key, value|
      key = "#{entrydelimiter}#{key}" if string != ""
      string += "#{key}#{keyvaldelimiter}#{value}"
      p string
  end
end
