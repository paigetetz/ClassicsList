class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :book_id, :headline, :commentary, :rating, :likes
  has_one :user

  
end
