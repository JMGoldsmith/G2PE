# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples(x)
  sum = 0
  #starting the loop here
  for num in 1...x
    #conditional check
    if num % 3 == 0 || num % 5 == 0
      #add to sum
      sum += num
    end
  end
  return sum
end
puts sum_of_multiples(1000)
#answer => 233168
