require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
########### test relationship with user #########

  test "Valid order" do
    order = create(:order)
    assert order.valid?
  end

  test "orders must belong to a user" do
    order = build(:order, user: nil)
    refute order.invalid?
    assert_not_nil order.errors[:user], "orders must belong to a user!"
  end

  test "orders should have correct user" do
    order = create(:order)
    user = create(:user)

    assert_equal(order.name, user.name)
  end

  # test "Orders should have a product (only if they have payment information they've entered?)" do
  #
  # end


  # these are somethings you might have to test.

  # t.string   "status",         limit: 80
  # t.string   "name"
  # t.string   "email"
  # t.string   "street_address"
  # t.string   "city"
  # t.string   "state"
  # t.integer  "zip"
  # t.integer  "phone",          limit: 10
  # t.datetime "created_at",                null: false
  # t.datetime "updated_at",                null: false
  # t.integer  "user_id"
  # t.integer  "product_id"
  # t.integer  "cc_number"
  # t.integer  "exp_month"
  # t.integer  "exp_year"
  # t.integer  "cvc"





end
