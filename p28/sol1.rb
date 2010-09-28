n3 = 9
sum = 25
n = 5
while n<1003
  row =  4*n3 + 10*(n-1)
  p row
  sum += row
  n3 += 4*(n-1)
  n += 2
end
p sum