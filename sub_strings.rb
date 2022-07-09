dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dict)
  string = string.downcase
  string.split(' ').each_with_object(Hash.new(0)) do |word, hash|
    dict.each { |element| hash[element] += 1 if word.include?(element) }
  end
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
