class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user,star_rating,comment)
        Review.create(star_rating: star_rating,product_id: self.id,user: user,comment: comment )
        #Review.create(star_rating: star_rating,product: self.id,user: user,comment: comment )

    end

     # This should puts in the terminal a string representing each review for this product 
    def print_all_reviews
    puts self.reviews.map{|review|"Review for #{review.product.name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"}
    end
    
    def average_rating
        reviews.map {|review| review.star_rating }.inject(:+) / reviews.size.to_f
    end




end