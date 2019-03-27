require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
# require_relative('../fish.rb')
# require_relative('../rivers.rb')


class TestBear < MiniTest::Test

  def setup(name)
    @bear = Bear.new("Yogi")

  end


  def test_bear_has_a_name
    assert_equal("Yogi", @bear.name)
  end



end
