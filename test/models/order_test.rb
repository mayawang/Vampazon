require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
########### test relationship with user #########

  # test "Order cannot be created without an associated user." do
  #   order = build(:order_without_user)
  #   assert_not_nil order.errors[:user], "orders must belong to a user!"
  # end

  test "Valid order" do
    order = create(:order)
    assert order.valid?
  end

  # test "Invalid order when you do not include credit card number" do
  #   order = create(:order, credit_card: nil)
  #   assert_not order.valid?
  # end


end
