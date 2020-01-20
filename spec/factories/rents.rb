FactoryBot.define do
  factory :rent do
    user_id    { user }
    book_id    { book }
    from       { Faker::Date.birthday }
    to         { from + from.day }
  end
end
