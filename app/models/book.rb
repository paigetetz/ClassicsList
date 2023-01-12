class Book < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    # def average_rating
    #     self.reviews.average(:rating)
    # end
    # def average_rating(book)
    #     reviews = Review.where(book_id: book_id)
    #     total = 0
    #     reviews.each do |review|
    #         total += review.rating
    #     end
    #     average = total.to_f / reviews.length
    #     average
    # end
end
