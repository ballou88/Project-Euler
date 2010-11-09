require "pp"
line = gets.split(/,/)
line.each {|b| b.delete! '"'}
line.sort!
namesum = Array.new
line.each_with_index do |name, index|
  letters = name.split(//)
  sum = letters.inject(0) {|sum, letter| sum + letter[0] - "A"[0] + 1}
  p letters
  namesum[index] = (index + 1) * sum
  p "#{index+1} * #{sum} = #{namesum[index]}"
end

p namesum.inject{|sum, n| sum + n}
