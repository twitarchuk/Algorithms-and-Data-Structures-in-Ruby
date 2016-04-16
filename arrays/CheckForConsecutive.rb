#Given an unsorted array of numbers ,return 1 if all the numbers are consecutive else return -1.

#Time-complexity:O(n),Auxiliary-space:O(n)
def check_consecutive(a)
    len=a.length
    min=a.min
    max=a.max
    if len==(max-min+1)
       visited=Array.new(len,0)
       for i in 0...len
        return -1 unless visited[a[i]-min]==0
        visited[a[i]-min]=1
       end
      return 1
    end
   return -1 
end
check_consecutive([1,3,3,2]) # => -1
check_consecutive([1,4,3,2]) # => 1

#Time-complexity:O(n),Auxiliary-space:O(1)
#Caveat: