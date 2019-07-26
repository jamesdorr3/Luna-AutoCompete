lines = ARGF.read.split("\n")
bigrams = []
lines.each do |line|
  bigrams << line[0,2].to_s
end

def spelled_correctly?(arr, word)
  wordup = word.upcase
  results = []
  (wordup.length-1).times do |i|
    results.push arr.include?(wordup[i,i+2])
    #   return false
    # end
    # return true
    # puts(wordup[i,2])
  end
  !results.include?(false)
  # puts word.length
end

puts spelled_correctly?(bigrams,'star')
puts spelled_correctly?(bigrams,'zookeeper')
puts spelled_correctly?(bigrams,'starlight')
puts spelled_correctly?(bigrams,'the')