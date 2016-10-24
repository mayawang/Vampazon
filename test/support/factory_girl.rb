FactoryGirl.define do

  # product with a 'belongs_to' user
  factory :product do
    name "Magic Cape"
    description "A cape like no other, for the undead"
    price 10.00
    photo_url "Minions/Ghosts.png"
    inventory 1
    category "fashion"
    user

    trait :no_inventory do
      inventory 0
    end
    trait :no_user do
      user nil
    end
  end

  factory :user do
    name "Michelle Obama"
    # practicing with dependent attributes
    email {"#{name.downcase}@example.com"}
    street_address "2100 Bad Ass Drive"
    city "Seattle"
    state "WA"
    zip 98122
    # limit 10
    phone 6023334455
    # create a trait where merchant is false or true.
    # if true = they have something for sale.
    merchant false

    trait :merchant_true do
      merchant true
    end
  end



  factory :order do
    # what does true mean again? and
    # limit 80
    status true
    name
    email
    street_address
    city
    # limit: 10
    phone
    # eventually limited to 16
    cc_number 4444555566667777
    # should be not out of date
    # limit 2
    exp_month 12
    # limit 2
    exp_year 17
    # limit 4
    cvc 444
    product
    user
#
    trait :order_without_user do
      user nil
    end

  end
end
