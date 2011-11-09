require 'set'
class Integer
  def factors()
    1.upto(Math.sqrt(self)).select { |n| (self%n).zero?}.inject([]) do |f, i|
      f << self/i unless i == self/i
      f << i
    end.sort
  end

  def abundent?
    self < (self.factors.inject(:+) - self)
  end
end


abundent = Set.new
sum = 0
(1..28123).each do |n|
  abundent.add(n) if n.abundent?
  sum += n unless abundent.any?{|m| abundent.include?(n-m)}
end
p sum
