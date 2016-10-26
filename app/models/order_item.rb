class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  def total_price
    return self.unit_price * self.quantity
  end

  # Only OrderItem model is directly linked to seller.
  # Order item has three status, pending, paid, fulfilled, cancelled.
  # refactored the order item status logic, changes the order item status whenever he order status on payment changes.
  def self.revenue_by_status(user_id, status)
    return self.joins(:product)
      .where(
        'products.user_id' => user_id,
        :status => status
      ).inject(0) do |sum, paid_order|
        sum + paid_order.total_price
      end
  end

  def self.paid_revenue(user_id)
    return self.revenue_by_status(user_id, "paid")
  end

  def self.fulfilled_revenue(user_id)
    return self.revenue_by_status(user_id, "fulfilled")
  end

  # total revenue = paid revenue + fulfilled revenue
  def self.total_revenue(user_id)
    return self.paid_revenue(user_id) + self.fulfilled_revenue(user_id)
  end

  def self.cancelled_revenue(user_id)
    return self.revenue_by_status(user_id, "cancelled")
  end

end
