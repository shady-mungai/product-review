puts "STARTED SEEDING "

20.times do

    product = Product.create(
        name: Faker::Commerce.product_name,
        price: Faker::Commerce.price
    )

    user = User.create(
        name: Faker::Name.name
    )

    
    rand(0..5).times do Review.create(
          star_rating:rand(0..5),
          user_id: user.id,
          product_id: product.id,
          comment: Faker::Lorem.sentence

      )
    end
    
end


puts "COMPLETED"
