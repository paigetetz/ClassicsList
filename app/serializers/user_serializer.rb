class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :fav_book, :fav_genre, :read_books

  has_many :reviews
  has_many :books
  
  def read_books
    self.object.read_books
  end

end
