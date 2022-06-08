def range(num1, num2)
  return [] if num1 > num2
  return [] if num2 == num1
  
  range(num1 , num2 - 1) << num2 - 1
  # arr = [num1]
  # arr + range(num1 + 1, num2)
end

# p range(1, 5)
# range(2, 5) + [1]
# ramge(3, 5) + [1 ,2] ... range(5, 5) [1, 2, 3, 4]

def sum(arr)
  return 0 if arr.length == 0
  arr[0] + sum(arr[1..-1])
end

# p sum([1,2,3])

def exponentiation1(base, exponent)
  return 1 if exponent == 0
  return base if base == 1
  if exponent.even?
    (exponentiation1(base, (exponent / 2)) ** 2)
  else
    base * (exponentiation1(base, (exponent - 1) / 2) ** 2 )
  end
end

# p exponentiation1(1, 0) #1
# p exponentiation1(2, 0)
# p exponentiation1(2, 1)
# p exponentiation1(2, 2)
# p exponentiation1(2, 3)
# p exponentiation1(2, 4)
# p exponentiation1(2, 5)

