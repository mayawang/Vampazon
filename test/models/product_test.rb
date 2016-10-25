require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # checklist
  # start with validations
  # Check custom methods in the model (dont do private)
  # relatonships


# let's pass an easy test!
  test "the truth" do
    assert true
  end

  test "valid product" do
    assert create(:product).valid?
  end
# # ############## testing product validations #############
  # test passes and added validations.
  test "Products must have a name, otherwise invalid." do
    product = build(:product, name: nil)
    assert product.invalid?
  end

  # test "Adding a name to a product that wasn't valid because it lacked name. Will become valid, once assigned one" do
  #   product = create(:product, category: "fashion", name: nil)
  #   product.name = "Name Acquired"
  #   product.save
  #   assert(product.valid?)
  # end

  # test "If a name is removed from product, product will then become invalid " do
  #   product = create(:product)
  #   assert(product.valid?)
  #
  #   product.name = nil
  #   assert_not(product.valid?)
  # end

  test "Products must have a price, otherwise invalid" do
    product = build(:product, price: nil)
    refute product.valid?
    assert_not_nil product.errors[:price], "no validation error for the price present. "
  end
# #
  test "product prices should not be a negative number" do
    product = build(:product, price: -1 )
    assert product.invalid?
  end

  test "product prices should be greater than zero" do
    product = build(:product, price: 0 )
    assert product.invalid?
  end

  test "product prices should be a postive number. 1.00 is valid" do
    product = build(:product, price: 1.00 )
    assert product.valid?
  end

# Commented out because to make validations for this one might caught merge conflicts.
  # test "Product prices must be decimals. 2 will be invalid." do
  #   product = build(:product, price: 2)
  #   assert product.invalid?
  # end

############## testing product associations #############

  # test "Products must have category" do
  #   product = create(:product, category: "")
  #   assert product.invalid?
  # end

  # test "A product must belong to a user. " do
  #
  # end

  test "Products must have correct category" do
    # default category: fashion /from factory.
    product = build(:product)
    fashion = build(:product)

    assert_equal(product.category, fashion.category)
  end
  
end
