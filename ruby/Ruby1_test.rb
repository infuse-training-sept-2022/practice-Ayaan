require 'test/unit'
require_relative 'Ruby1'
class TestbookRuby1 < Test::Unit::TestCase
    def test_make_object
        av_created = Averaging.new("str")
        assert av_created.instance_of? Averaging
    end
end