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

# arr1 = [[0, 1, 2], [4, 5, 6]]
# arr2 = arr1.dup
# arr2[1] << 7

# arr1.each { |subarr| p subarr.object_id }
# puts "____________________"
# arr2.each { |subarr| p subarr.object_id }
# puts "____________________"
# p arr1.object_id
# puts "____________________"
# p arr2.object_id

def deep_dup(arr)
  
  return [arr] if  !arr.is_a? Array
  return [] if arr.length == 0
  if !arr[0].is_a? Array
    [arr[0]] + deep_dup(arr[1..-1])
  else
    new_arr = [] 
    arr[0].each do |ele| 
      if !ele.is_a? Array
        new_arr << ele
      else
        new_arr << deep_dup(ele)
      end
    end
    [new_arr] + deep_dup(arr[1..-1])
  end
end

# [1] + deep_dup([[2], 3])
# [1] + [2] + deep_dup([3])


# p deep_dup([])
# p deep_dup(1)
# arr = [1, [2], [3, [4]]]

# arr2 = deep_dup(arr)

# arr2[2][1] << 85

# p arr
# p arr2

def fibonacci(num)
  return [] if num == 0
  return [0] if num == 1
  return [0, 1] if num == 2
  temp = fibonacci(num - 1)
  temp << (temp[-1] + temp[-2])
end

# p fibonacci(10)

def bsearch(arr, target_num)
  median = arr.length/2
  return nil if median == 0
  if arr[median] == target_num
    return median
  elsif target_num < arr[median]
    bsearch(arr[0...median], target_num)
  else
      median + 1 + bsearch(arr[median + 1..-1], target_num)
  end

end

# p bsearch([1,3, 4, 5, 9], 5)
# p bsearch([1,2,3,4, 5 ,6 ],6 )
# arr = [1,2,3,4,5,6,7,8,9,10,11]
# p bsearch([2,4,6,8,10], 6)
# p bsearch(arr, 8)
# p bsearch([1,2,3,4,5,7], 6)

    # arr1 = 0 ... arr.length/2
    # median = arr[arr.length/2] 
    # arr2 = arr.length/2 .. -1 

# def merge_sort(arr, arr2= [])
#   return [arr] if arr.length == 1
#   median = arr.length/2
#   arr1 = arr[0...median]
#   arr2 = arr[median..-1]
  
#   merge_sort(arr1, arr2)

# end

# def merge(arr1, arr2)
# new_arr = []
# (0...arr1.length).each do |i|
#   if arr1[i] > arr2[i]
# end 

# end 

def subsets(arr)
  return [] if arr.length == 0
  num = 0
  while num < arr.length
    p arr
    num += 1
    subsets(arr[num..-1]) 
    
  end


end 

p subsets([1,2,3])