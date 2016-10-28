class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  has_many :order_items
  validates :price, presence: true, numericality: {:greater_than => 0}


  def total_price
    return self.order_items.inject(0) {|sum, order_item | sum + order_item.total_price }
  end



end
