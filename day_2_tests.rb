require "test/unit"
require_relative "day_2"

class TestDay2 < Test::Unit::TestCase

    def test_checksum
        assert_equal(18, Day_2.new.run("5 1 9 5
        7 5 3
        2 4 6 8"))
    end

end
