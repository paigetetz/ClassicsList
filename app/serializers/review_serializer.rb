class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :book_id, :headline, :commentary, :rating, :likes, :username, :book_info, :profile_pic
  has_one :user

  def username
    self.object.username
  end
  
  def book_info
    self.object.book_info
  end
  def profile_pic
    self.object.profile_pic
  end
end
