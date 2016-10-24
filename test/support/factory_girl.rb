FactoryGirl.define do

  # product with a 'belongs_to' user 
  factory :product do
    category "fashion"
    description "A cape like no other, for the undead"
    inventory 1
    name "Magic Cape"
    photo_url "Minions/Ghosts.png"
    price 10.00
  end
end


belongs_to :user
has_many :orders
has_many :order_items, through: :orders
