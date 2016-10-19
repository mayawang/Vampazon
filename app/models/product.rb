class Product < ActiveRecord::Base
  belongs_to :user_id
  has_many :order_id
  has_many :order_item
  
end
