#dang, this is pretty slow...
def largest_prime(n)
  n.downto(1).detect {|x| n % x == 0 and prime?(x)}
end

def prime?(n)
  if n == 2 or n == 1
    true
  elsif n.even?
    false
  else
    not (2..(n/3)).any? {|x| n % x == 0}
  end
end

puts largest_prime(600851475143)

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?