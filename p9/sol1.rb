(1..998).each do |a|
  ((a+1)..998).each do |b|
    next if a+b>1000
    ((b+1)..998).each do |c|
      if a**2 + b**2 == c**2
          puts "#{a**2} + #{b**2} = #{c**2}"
          puts "#{a} + #{b} + #{c} = #{a+b+c}"
        if a + b + c == 1000
          puts a*b*c
          exit
        end
      end  
    end
  end
end