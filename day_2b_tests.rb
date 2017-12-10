require "test/unit"
require_relative "day_2b"

class TestDay2b < Test::Unit::TestCase

  def test_equally_dividable_row_1
      assert_equal(4, Day_2b.new.run("5 9 2 8"))
  end

  def test_equally_dividable_row_2
      assert_equal(3, Day_2b.new.run("9 4 7 3"))
  end

  def test_equally_dividable_row_3
      assert_equal(2, Day_2b.new.run("3 8 6 5"))
  end

end
