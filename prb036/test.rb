
sum = (1...1000000).inject do |sum, n|
  (n.to_s == n.to_s.reverse and n.to_s(2) == n.to_s(2).reverse) ? (sum + n) : sum
end
p sum