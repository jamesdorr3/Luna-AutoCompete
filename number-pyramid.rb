lines = ARGF.read.split("\n")
num = lines[0].to_i
pyramid = []

def build_first_line(number)
  str = []
  number.times do |i|
    str.push("#{i+1}")
  end
  return str.join + str.slice(0,str.length-1).reverse.join
end
num.times do |i|
  pyramid.push(build_first_line(i+1))
end

puts pyramid + pyramid.slice(0,pyramid.length-1).reverse