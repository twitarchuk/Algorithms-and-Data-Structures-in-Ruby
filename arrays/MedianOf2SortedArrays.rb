# There are 2 sorted arrays A and B of size n each. 
# find the median of the array obtained after merging the above 2 arrays(i.e. array of length 2n).

#Algorithm :Binary-search
#Time-complexity:O(logn),Auxiliary-space: O(1)

def get_median(a,a1,len)
    return (a[0]+a1[0])/2 if len==1
    return ([ar1[0], ar2[0]].max + [ar1[1], ar2[1]].min)/2 if len==2
    m1=median(a,len)
    m2=median(a1,len)
    if m1==m2
        return m1
    elsif m1<m2
        if len%2==0
            return median(a,)
    
    
    else
        
    end
    
    
end


def median(arr,len)
    if len%2==0
        return (arr[n/2]+arr[(n/2)-1])/2
    else
        return arr[n/2]
    end
end

get_median([1,2,3,4,5],[],)