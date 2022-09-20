require 'test/unit'
require_relative 'Ruby4'
class TestbookRuby4 < Test::Unit::TestCase
    def test_make_object
        sp_created = Sports.new()
        assert sp_created.instance_of? Sports
    end

    def test_skip_sports
        sp_created = Sports.new()
        assert_equal(2...4, sp_created.skip_sports(["Criket","TT","Football","Hockey"],2))
    end
end