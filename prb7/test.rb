require "mathn"

pn = Prime.new
(1..10001).each do |f|
  p "#{f} : #{pn.next}"
end