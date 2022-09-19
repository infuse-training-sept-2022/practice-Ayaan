require 'test/unit'
require 'json'
require_relative 'Ruby5'

class TestbookRuby5 < Test::Unit::TestCase
    #@@JSON_FILENAME = 'sample.json'

    def test_make_object
        json = File.read('sample.json')
        obj = JSON.parse(json)

        rub_created = FileOperation.new(obj)
        assert rub_created.instance_of? FileOperation
    end

    def test_func
        json = File.read('sample.json')
        obj = JSON.parse(json)

        rub_created = FileOperation.new(obj)
        assert_equal(nil,rub_created.fun(obj))
    end

    def test_fileName
        isFilePresent = false
        Dir.foreach('./') do |filename|next if filename == '.' or filename == '..'
                if filename.include? "UTC"
                    assert_equal("Ayaan",filename.split("_")[0])
                    isFilePresent = true
                end
            end
        assert({"name"=>"Nicole Smith", "age"=>25, "salary"=>25552.67, "first name"=>"Nicole", "last name"=>"Smith"}, "file not found")
    end
end