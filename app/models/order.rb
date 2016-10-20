class Order < ActiveRecord::Base
  belong_to :status
  belongs_to :product_id
  belongs_to :user_id
  has_many :order_item


  

end
