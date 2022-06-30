require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict) 
  word_array = string.split(/\W+/)
  substring_array = []
  word_array.each do |word|
    word = word.downcase
    dict.each do |substring|
      if word.include?(substring)
        substring_array << substring
      end
    end
  end

  hash_listing = substring_array.reduce(Hash.new(0)) do |hash, substring|
    hash[substring] += 1
    hash
  end

  p hash_listing
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

