# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#
#Using Enumerable here
require 'prime'
def prime_factors(input)
  #declaring array here outside of scope
  factors = []
  #iterating through prime via enumerable. Was going to build out a loop to push out prime numbers to check against, but wanted to show
  #knowledge of requiring.
  Prime.each(100000) do |prime|
    #setting x to a float so that I can accuratly check if it is actually divisible by a prime number.
    input_div_by_prime = input.to_f / prime
    #checking against prime.
    if (input_div_by_prime % 1 == 0)
      #Pushing to array.
      factors.push(prime)
    end
  end
  #returning the last/largest number in the array as an interger, not a float, even though decimal places will always be .00
  return factors[-1].to_i
end
puts prime_factors(600851475143)
#answer => 6857
