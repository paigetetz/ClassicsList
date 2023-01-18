class Book < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    def average_review
        self.reviews.map{|review| review.rating}.reduce(:+).to_f / reviews.count
    end
    
end
