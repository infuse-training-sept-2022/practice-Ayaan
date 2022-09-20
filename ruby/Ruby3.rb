class HashTask
    
    attr_accessor :key, :value, :newHash
    
    def initialize(key, value)
        @key=key
        @value=value
        @newHash = Hash.new
    end

     def func(key,value)
        if key.is_a? Integer
            @newHash[key]=value
        end
     end

     def to_dispaly()
        puts newHash
     end
end

h = HashTask.new(55486,10)
h.func(54321,100)
h.func("Bob",200)
h.func("5",300)
h.to_dispaly