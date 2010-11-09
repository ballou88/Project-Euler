list = Array.new
(2..100).each do |a|
  (2..100).each do |b|
    list.include?(a**b) ? list :(list << a**b)
  end
end
p list.length