class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :book_id, :headline, :commentary, :rating, :likes, :username, :book_info
  has_one :user

  def username
    self.object.username
  end
  
  def book_info
    self.object.book_info
  end
end
