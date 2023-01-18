class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :summary, :short, :page_count, :genre, :published, :rating, :image_url, :average_review

  def average_review
    self.object.average_review
  end

end
