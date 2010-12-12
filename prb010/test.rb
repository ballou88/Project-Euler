require "pp"
def sieve(nums, n)
  #list = nums.each.collect {|x| x if x % n != 0}
  list = nums.delete_if { |x| x%n==0} 
  return list
end

list = (3..2000000).collect {|x| x if x % 2 != 0}
list.compact!
primes = Array.new
max = Math.sqrt(2000000)
while list.length > 1 and  list.first<Math.sqrt(2000000)
  primes << list.delete_at(0)
  p "length :#{list.length} last prime: #{primes.last}"
  list = sieve(list, primes.last)
end
primes.concat(list)
pp primes
p primes.inject(2) {|sum, n| sum + n}
