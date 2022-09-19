require 'test/unit'
require_relative 'Ruby6'

class TestbookRuby6 < Test::Unit::TestCase
    def test_make_object
        becoding_created = EncodingString.new
        assert becoding_created.instance_of? EncodingString
    end

end
