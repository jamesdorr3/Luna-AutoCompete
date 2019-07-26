lines = ARGF.read.split("\n")
puts lines.inject(0) { |sum, line| sum += line.to_i}