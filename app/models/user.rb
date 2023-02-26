class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews


    def favorite_product
        products.order('reviews.star_rating DESC').first
        
    end

    def remove_reviews(product)
        reviews.destroy_by(product: product)
    end

end