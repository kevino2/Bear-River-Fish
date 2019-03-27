require('minitest/autorun')
require('minitest/rg')
require_relative('../rivers.rb')
require_relative('../fish.rb')
# require_relative('../bears.rb')



class TestRivers < MiniTest::Test

  def setup()
    @river = River.new("Amazon", [@fish_01, @fish_02, @fish_03, @fish_04])
    # @bear1 = Bear.new("Yogi", "Grizzy")
		@fish_01 = Fish.new("Salmon")
		@fish_02 = Fish.new("Clownfish")
		@fish_03 = Fish.new("Tuna")
		@fish_04 = Fish.new("Mackerel")
    # @fishies = [@fish_01, @fish_02, @fish_03, @fish_04]
  end



    def test_river_has_a_name
    	assert_equal("Amazon", @river.name)
    end

    def test_river_fish_population
      assert_equal(4, @river.fish_count)
    end

    def test_remove_fish
    @river.remove_fish(@fish_01)
    assert_equal([@fish_02, @fish_03, @fish_04], @river.fish_population)
  end

  
end
