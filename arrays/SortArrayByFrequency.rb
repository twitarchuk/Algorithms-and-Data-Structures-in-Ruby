def sort_by_frequency(a)
    len=a.length
    freq=Hash.new()
    for i in 0...len
     unless freq[a[i]]
         freq[a[i]]=1 
     else
         freq[a[i]]+=1
     end
    end
    freq.sort_by {|key,value| value}
end
        
            
            
        