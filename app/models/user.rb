class User < ApplicationRecord  
    has_many :reviews
    has_many :books, through: :reviews
    has_secure_password

    validates :username, uniqueness: true
    validates :username, :fav_book, :fav_genre, presence: true
end

