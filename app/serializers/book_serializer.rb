class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :summary, :page_count, :genre, :published, :rating
end
