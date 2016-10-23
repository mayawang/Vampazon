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

# this will not pass without proper validations. Which seem necesssary if orders must have certain info?
  # test "Order without proper information is not valid" do
  #   orders(:minimal_order).valid?
  #   assert_not orders(:minimal_order).valid?
  # end


  # test "add to cart should work" do
  #
  # end

  # test "An order should belong to product" do
  #   assert orders(:order1)
  # end
  test "Order 1 must have first_name of Ruth" do
      assert_equal "Ruth",
       orders(:one).first_name
  end

  # test "Can create a new order" do
  #
  # end

  # test "add and remove product from order" do
  #
  #   sunscreen = orders(:product1)
  #   coffin = orders(:product2)
  #
  #   sunscreen.add_to_cart()
  #
  #   coffin.remove_cart()
  #
  #
  # end

  # test "You can add proudct to order" do
  #   assert_difference(Order.count, -1)
  #   # controller here would delete something
  #
  # end

  # test "Orders can have products" do
  #   assert_includes products(:product1).orders, products(:sunscreen)
  # end

  test "order one's id equals 1" do
    assert orders(:one).id == 1
  end

  # test "order one's order items include product1" do
  #
  # end

  test "does not save order without status" do
    order_one = Order.new
    assert_not order_one.save
  end

  test "order belongs to user rbg" do
    things = Order.find(1)
    assert_equal things.user_id, 1
  end








end
