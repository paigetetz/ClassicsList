class Book < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    def average_review
        average = self.reviews.map{|review| review.rating}.reduce(:+).to_f / reviews.count
        average.round(2)
    end
    
end
