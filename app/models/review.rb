class Review < ApplicationRecord
    belongs_to :user
    belongs_to :book

    validates :headline, :commentary, :rating, presence: true
    
end
