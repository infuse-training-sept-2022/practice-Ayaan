require "json"

json = File.read('sample.json')
obj = JSON.parse(json)
#puts obj

class FileOperation
    def initialize(obj)
        @filename = obj
    end
    
    def fun(obj)
        this = obj['name']
        this = this.split(" ")
        obj['first name'] = this[0]
        obj['last name'] = this[1]
        puts obj
    end

    def moving(obj)
        time = Time.now.getutc.to_i
        File.write("./Ayaan_#{time}.json", JSON.dump(obj))
    end
end 

rub = FileOperation.new(obj)
rub.fun(obj)
rub.moving(obj)




