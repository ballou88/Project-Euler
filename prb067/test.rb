index = 0
data = Array.new
File.open('data','r') do |f|
  while line = f.gets
    data[index] = line.split
    index += 1
  end
end

while !data.empty? do
  bottom = data.pop
  if data.empty?
    p bottom[0]
    exit
  end
  data.last.each_with_index do |n, index|
    data.last[index] = [bottom[index].to_i, bottom[index+1].to_i].max + n.to_i
  end
end