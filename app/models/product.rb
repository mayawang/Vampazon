class Product < ActiveRecord::Base
  belongs_to :user
  has_many :order
  has_many :order_item

  def average_rating
    reviews = Review.where(:product_id => self.id)
    return reviews.average(:rank)
  end
end
