class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :fav_book, :fav_genre

  has_many :reviews
  
end
