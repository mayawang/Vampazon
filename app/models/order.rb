class Order < ActiveRecord::Base
  belongs_to :product_id
  belongs_to :user_id
end
