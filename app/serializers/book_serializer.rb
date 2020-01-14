class BookSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :publisher, :year, :genre
end
