class BookReviewShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :summary, :short, :page_count, :genre, :published, :average_review, :image_url
  has_many :reviews
  has_many :users, through: :reviews

  def average_review
    self.object.average_review
  end
end
