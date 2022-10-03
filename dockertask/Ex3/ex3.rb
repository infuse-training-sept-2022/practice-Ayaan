class CompleteTheFunc
    attr_accessor :arr

    def element_at(arr, index)
        return arr[index]
    end

    def inclusive_range(arr, start_pos, end_pos)
        for i in start_pos..end_pos
            puts arr[i]
            #print "#{arr[i]} "
        end
    end

    def non_inclusive_range(arr, start_pos, end_pos)
        for j in start_pos...end_pos
            puts arr[j]
            #print "#{arr[i]} "
        end
    end

    def start_and_lenght(arr, start_pos, lenght)
        for k in start_pos...start_pos+lenght
            puts arr[k]
            #print "#{arr[i]} "
        end
    end
end

myarr=[9,5,1,2,3,4,0,-1]

ae= CompleteTheFunc.new
ae.element_at(myarr,3)
ae.inclusive_range(myarr,1,4)
ae.non_inclusive_range(myarr,2,5)
ae.start_and_lenght(myarr,2,4)