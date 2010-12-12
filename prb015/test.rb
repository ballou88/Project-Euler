limit =20 
t = Array.new(limit+1)
t.map!{Array.new(limit+1,0)}
(0..limit).each do |x|
  (0..limit).each do |y|
    if x==0 or y==0
      t[x][y] = 1
    else
      t[x][y] = t[x-1][y] + t[x][y-1]
    end
  end
end
p t[limit][limit]