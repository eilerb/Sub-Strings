
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict) 
  string = string.downcase
  count = string.split(' ').reduce(Hash.new(0)) do |hash, word|
    dict.each {|element| hash[element] += 1 if word.include?(element)}
    hash
  end
  return count
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

