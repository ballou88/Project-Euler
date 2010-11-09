test = (1..100).inject{|pr,n| pr * n}
at = test.to_s.split(//)
p at.each.inject(0){|sum,n| sum + n.to_i}