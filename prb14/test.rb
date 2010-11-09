def chain(n)
  list = Array.new
  while n != 1
    list.push(n)
    if n%2==0
      n = n/2
    else 
      n=3*n+1
    end
  end
  list.push(1)
  return list.length
end

max = 0
nmax = 0
(1..1000000).each do |n|
  t = chain(n)
  if max < t
    max = t
    nmax = n
  end
end
p max
p nmax
