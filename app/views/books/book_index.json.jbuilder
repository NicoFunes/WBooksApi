json.array! @books do |mybook|
  json.id mybook.id
  json.title mybook.title
  json.author mybook.author
  json.publisher mybook.publisher
  json.year mybook.year
end
