require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # guideline: at least one test for each:
  #validation
  # custom method
  # model relationship
  # scope
  # Try to cover postive, negative, and edge cases
  #   belongs_to :product
  #   belongs_to :user

# You have access to all fixtures via a method with the same name  orders(:order1),(:order2)

  test "Order 1 must have first_name of Ruth" do
      assert_equal "Ruth",
       orders(:one).first_name
  end


  test "order one's id equals 1" do
    assert orders(:one).id == 1
  end


  test "does not save order without status" do
    order_one = Order.new
    assert_not order_one.save
  end

  test "order belongs to user rbg" do
    things = Order.find(1)
    assert_equal things.user_id, 1
  end

  test "Order with minimal information is valid" do
    
  end






end
