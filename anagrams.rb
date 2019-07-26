lines = ARGF.read.split("\n")
goal = lines.shift.split('').sort.join
count = 0
lines.each do |line|
  thisone = line.split('').sort.join
  if thisone == goal
    count += 1
  end
end
puts count