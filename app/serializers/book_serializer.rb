class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :summary, :short, :page_count, :genre, :published, :rating, :image_url

end
