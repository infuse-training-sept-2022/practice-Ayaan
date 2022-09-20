class Sports
    attr_accessor :arr, :size, :from_pos
    def initialize()
        @arr=arr
        @size=size
        @from_pos=from_pos
    end

    def skip_sports(arr, from_pos)
        size = arr.length()
        for i in from_pos...size
            print "#{i}:#{arr[i]} "
        end
    end
end

myarr=["Criket","TT","Football","Hockey"]

sp = Sports.new
sp.skip_sports(myarr,2)
