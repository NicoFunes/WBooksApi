FactoryBot.define do
  factory :rent do
    user_id    { create(:user).id }
    book_id    { create(:book).id }
    from       { Faker::Date.birthday }
    to         { from + from.day }
  end
end
