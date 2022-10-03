require 'test/unit'
require_relative 'ex3'
class Testbookex3< Test::Unit::TestCase
    def test_make_object
        ae_created = CompleteTheFunc.new()
        assert ae_created.instance_of? CompleteTheFunc
    end

    def test_element_at
        ae_created = CompleteTheFunc.new()
        assert_equal(2, ae_created.element_at([9,5,1,2,3,4,0,-1],3))
    end

    def test_inclusive_range
        ae_created = CompleteTheFunc.new()
        assert_equal(1..4, ae_created.inclusive_range([9,5,1,2,3,4,0,-1],1,4)) 
    end

    def test_non_inclusive_range
        ae_created = CompleteTheFunc.new()
        assert_equal(2...5, ae_created.non_inclusive_range([9,5,1,2,3,4,0,-1],2,5)) 
    end

    def test_start_and_lenght
        ae_created = CompleteTheFunc.new()
        assert_equal(2...6, ae_created.start_and_lenght([9,5,1,2,3,4,0,-1],2,4)) 
    end

end