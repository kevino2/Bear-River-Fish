require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pet')
require_relative('../pet_shop')

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Jack Jarvis", 1000)
    @pet = Pet.new("Blue", :cat, "British Shorthair", 500)
    @pet_shop = PetShop.new("Fish Emporium", [@pet], 1000)
  end

  def test_customer_has_name()
    assert_equal("Jack Jarvis", @customer.name)
  end

  def test_customer_has_cash()
    assert_equal(1000, @customer.cash)
  end

  def test_pets_start_at_0
    assert_equal(0, @customer.pet_count())
  end

  def test_can_add_pet()

    @customer.add_pet(@pet)
    assert_equal(1, @customer.pet_count())
  end


  def test_can_get_total_pet_cost()
    @customer.add_pet(@pet)
    @customer.add_pet(@pet)
    @customer.add_pet(@pet)

    assert_equal(1500, @customer.get_total_of_pets())
  end

  def test_customer_can_buy_pet()
    @customer.buy_pet("Blue", @pet_shop)
    assert_equal(1, @customer.pet_count())
    assert_equal(0, @pet_shop.stock_count())
    assert_equal(1, @pet_shop.pets_sold)
  end


end
