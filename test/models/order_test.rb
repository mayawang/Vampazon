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
       orders(:order1).first_name
  end

  # test "Can create a new order" do
  #
  # end

  test "add and remove product from order" do

    sunscreen = orders(:product1)












end
