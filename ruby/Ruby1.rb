class Averaging
    attr_accessor :str
    def initialize(str)
        @str=str
    end

    def serial_average()
        numbers = str.split("-")
        avg=(numbers[1].to_f + numbers[2].to_f)/2
        avg = avg.to_s+"0"
        numbers[0].concat("-")
        puts(numbers[0]+avg)
        #return numbers
    end
end

av = Averaging.new("002-10.00-20.00")
av.serial_average
