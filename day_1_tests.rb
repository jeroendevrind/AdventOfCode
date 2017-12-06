require "test/unit"
require_relative "day_1"

class TestDay1 < Test::Unit::TestCase
    
    def test_1122
        assert_equal(3, Day_1.new.run("1122"))
    end
    
    def test_1111
        assert_equal(4, Day_1.new.run("1111"))
    end
    
    def test_1234
        assert_equal(0, Day_1.new.run("1234"))
    end
    
    def test_9121212129
        assert_equal(9, Day_1.new.run("9121212129"))
    end
end

