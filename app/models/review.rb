class Review < ApplicationRecord
    belongs_to :user
    belongs_to :book

    validates :headline, :commentary, :rating, presence: true
    
    def username
        self.user.username
    end

    def book_info
        "#{self.book.title} by #{self.book.author} "
    end

    def profile_pic
        self.user.profile_pic
    end
end
