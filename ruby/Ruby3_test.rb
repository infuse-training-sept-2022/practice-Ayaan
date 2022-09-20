require 'test/unit'
require_relative 'Ruby3'
class TestbookRuby3 < Test::Unit::TestCase
    def test_make_object
        h_created = HashTask.new(@key,@value)
        assert h_created.instance_of? HashTask
    end

    def test_func
        h_created = HashTask.new(@key,@value)
        assert_equal(100, h_created.func(54321,100))
    end

    def test_to_display
        h_created = HashTask.new(@key,@value)
        assert_equal(nil, h_created.to_dispaly())
    end
end