require "test/unit"
require_relative "day_3"

class TestDay3 < Test::Unit::TestCase

  def test_spiral_1
      assert_equal(0, Day_3.new(1).distance())
  end

  def test_spiral_12
      assert_equal(3, Day_3.new(12).distance())
  end

  def test_spiral_23
      assert_equal(2, Day_3.new(23).distance())
  end

  def test_spiral_1024
      assert_equal(31, Day_3.new(1024).distance())
  end

end
