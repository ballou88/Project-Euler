include Math

def factor(num)
  max = sqrt(num).to_i
  div = (1..max).inject(Array.new) do |div, n|
    num%n == 0 ? (div << n) : div
  end
  div
end

factors = Array.new
p factors.length
index = 1
triangle = 0
maxdiv = 0
while factors.length < 250 
  triangle += index
  index += 1
  factors = factor(triangle)
  maxdiv = [maxdiv, factors.length].max
end

p triangle