require "test/unit"
require_relative "day_4"

class TestDay4 < Test::Unit::TestCase

  def test_spiral_1
      assert_equal(1, Day_4.new.run("aa bb cc dd ee"))
  end

  def test_spiral_12
      assert_equal(0, Day_4.new.run("aa bb cc dd aa"))
  end

  def test_spiral_23
      assert_equal(1, Day_4.new.run("aa bb cc dd aaa"))
  end

end
