class BookReviewShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :summary, :short, :page_count, :genre, :published, :rating, :image_url
  has_many :reviews
  has_many :users, through: :reviews
end
