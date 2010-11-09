#read in 20x20 grid
#convert into a 2d array
  grid = Array.new
File.open('data', 'r') do |f|
  index = 0
  while line = f.gets
    grid[index] = line.split
    index += 1
  end
end

def calc_value(grid, x, y)
  vertical = 0
  diagonal = 0
  xdiagonal = 0
  horizontal = 0
  horizontal = (0..3).inject(1){|product, n| grid[y][x+n].to_i*product} unless x>16
  vertical = (0..3).inject(1){|product, n| grid[y+n][x].to_i*product} unless y>16
  diagonal = (0..3).inject(1){|product, n| grid[y+n][x+n].to_i*product} unless x>16 or y>16
  xdiagonal = (0..3).inject(1){|product, n| grid[y-n][x+n].to_i*product} unless x<3 or y>16
  [horizontal, vertical, diagonal, xdiagonal].max
end
lmax =0
(0..19).each do |y|
  (0..19).each do |x|
    tmax = calc_value(grid, x, y)
    lmax = [tmax, lmax].max
  end
end
p lmax