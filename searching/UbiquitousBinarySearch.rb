# Binary Search Implementation which can be used in various problems
# Application of this implimantation: http://www.geeksforgeeks.org/the-ubiquitous-binary-search-set-1/
    


def ubiquitous_binary_search(a, n, key) # a is the array , n is its length and key is the value we want to search
    lo= 0
    hi = n-1
    
    while(hi-lo>1)
     mid = lo + (hi-lo)/2
     
     if a[mid]<=key
         lo=mid
     else
         hi=mid
     end
    end
    
    if (a[lo]== key)
        return lo
    else
        return "value not found"
    end
end