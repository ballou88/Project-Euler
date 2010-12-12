f = Array.new
count = 2
f[1] = 1
f[2] = 1
while f[count].to_s.split(//).count < 1000
  count += 1
  f[count] = f[count-1] + f[count-2]
  
  p f[count]
end

p count