# json.book do
#   json.id book.id
#   json.title book.title
#   json.author book.author
#   json.publisher book.publisher
#   json.year book.year
# end
json.(@abook,:id, :title,:author, :publisher)