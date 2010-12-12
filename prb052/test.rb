def check(num)
  num.to_s.split(//).sort
end
x = 0
while (true)
  x += 1
  break if check(2*x) == check(3*x) and check(3*x) == check(4*x) and check(4*x) == check(5*x) and check(5*x) == check(6*x)
end

p x
