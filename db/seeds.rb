3.times do |n|
  restaurant = Restaurant.new(
    name: "testレストラン_#{n}",
    fee: 100,
    time_required: 10,
  )

  12.times do |m|
    restaurant.foods.build(
      name: "フード名_#{m}",
      price: [300, 400, 500, 600, 700, 800, 900, 1000].sample,
      description: "フード_#{m}の説明文です"
    )
  end

  restaurant.save!
end
