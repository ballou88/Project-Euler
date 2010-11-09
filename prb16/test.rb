t = 2**1000
st = t.to_s.split(//)
sum = 0
st.each{|n| sum += n.to_i}
p sum
