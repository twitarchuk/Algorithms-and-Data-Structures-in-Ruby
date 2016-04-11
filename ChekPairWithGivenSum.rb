#Given an array A[] and a number x, check for pair in A[] with sum as x(Using Hash Map)
#Time-complexity: O(n), Space-complexity: O(n)

def check_pair(arr,x)
    len=arr.length
    flag=false
    map=Hash.new()
    for i in 0...len
        t=x-arr[i]
		if map[t]
			flag=true
			break
		end
    	map[arr[i]]=1
    end
    if flag
        print "Array has two elements with sum:#{x}"
    else
        print "Array doesn't have two elements with sum:#{x}"
    end
end

check_pair([5,4,10,-2,3,2,-1,9],9)
