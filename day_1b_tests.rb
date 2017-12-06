require "test/unit"
require_relative "day_1b"

class TestDay1b < Test::Unit::TestCase

    def test_1212
        assert_equal(6, Day_1b.new.run("1212"))
    end

    def test_1221
        assert_equal(0, Day_1b.new.run("1221"))
    end

    def test_123425
        assert_equal(4, Day_1b.new.run("123425"))
    end

    def test_123123
        assert_equal(12, Day_1b.new.run("123123"))
    end

    def test_12131415
        assert_equal(4, Day_1b.new.run("12131415"))
    end

end
