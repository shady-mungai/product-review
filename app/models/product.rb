class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user,star_rating,comment)
        Review.create(star_rating: star_rating,product_id: self.id,user: user,comment: comment )
        #Review.create(star_rating: star_rating,product: self.id,user: user,comment: comment )

    end

    # def print_all_review
    #     #puts "Review for #{name} by #{user.name}:#{review.star_rating}. #{review.comment}"
    #     pp users
    #     user_name =  users.each {|user| user[:name] }
    #     puts user_name
    # end

    def average_rating
        reviews.map {|review| review.star_rating }.inject(:+) / reviews.size.to_f
    end




end