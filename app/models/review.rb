class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    def print_review
        puts "Review for #{product.name} by #{user.name}: star_rating of#{star_rating} user's review:#{comment}"
    end

end