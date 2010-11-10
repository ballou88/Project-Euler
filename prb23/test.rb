def factor(num)
  factors = (1..((num/2).to_i)).inject(Array.new) do |factors, n|
    num%n == 0 ? factors << n : factors
  end
  factors
end

def amicable?(num1)
  num2 = factor(num1).inject(0){|sum,n| sum + n}
  if factor(num2).inject(0){|sum,n| sum + n} == num1
    return num1, num2
  else
    return 0, 0
  end
end
list = Array.new
(1...10000).each do |n|
  num1, num2 = amicable?(n)
  if num1 != num2
    list << num1 << num2
    p "#{num1} #{num2}"
  end
end
p list.uniq!.inject(0){|sum,n| sum+n}
