# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#
#This one doesn't need much in the way of comments. Hoping I made it readable enough.
class Difference
  def initialize
    @sum_of_square = sum_of_square
    @square_of_sum = square_of_sum
  end
  def self.sum_of_square(x)
    sum = 0
    for num in 1..x
      sum += num**2
    end
    return sum
  end
  #reusing variable sum due to scoping.
  def self.square_of_sum(x)
    sum = 0
    for num in 1..x
      sum += num
    end
    return sum**2
  end
  def self.diff(x)
    y = sum_of_square(x) - square_of_sum(x)
    puts y.abs
  end
end
Difference.diff(100)
# answer => 25164150
