# Given array of integers (both +ve and -ve) find the two elements such that their sum is closest to given number x.
# Time-complexity: O(nlogn) // O(nlogn) {for sorting} + O(n), Auxiliary-space : O(1)

# Algorithm: Sort the array and update the closest sum using two indexes (left and right) 

def closest_sum(a,x)
  # choose any sorting algorithm
  a.sort!
  left = min_l = 0
  right = min_r = a.length - 1
  # initializing min_sum with infinity
  min_sum = Float::INFINITY
  while (left < right)
    sum = a[left] + a[right] - x
    if (sum.abs < min_sum)
        min_sum = sum.abs
        min_l = left
        min_r = right
    end
    if (sum < 0)
        left+=1
    else
        right-=1
    end
  end
    puts "The two elements whose sum is minimum are #{a[min_l]} and #{a[min_r]}"   
end

closest_sum([1,3,2,4,5],9) # => The two elements whose sum is minimum are 4 and 5
