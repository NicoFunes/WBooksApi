require 'rails_helper'
require 'pp'

describe Book, type: :model do
  it do
    should validate_presence_of(:title)
  end

  subject(:book) do
    Book.new(
      title: title, author: author, image: image, genre: genre, publisher: publisher, year: year
    )
  end
  let(:title)                 { Faker::Book.title }
  let(:author)                { Faker::Book.author }
  let(:image)                 { Faker::Avatar.image }
  let(:genre)                 { Faker::Book.genre }
  let(:publisher)             { Faker::Book.publisher }
  let(:year)                  { Faker::Date.birthday(min_age: 1, max_age: 95).year }
  it do
    is_expected.to be_valid
  end
  describe '#create' do
    context 'When the title is nil' do
      let(:title) { nil }
      it do
        is_expected.to be_invalid
      end
    end
    context 'When the author is nil' do
      let(:author) { nil }
      it do
        is_expected.to be_invalid
      end
    end
    context 'When the year is in the future'
    let(:year) { 3000 }
    it do
      is_expected.to be_invalid
    end
    context 'When the year is too old'
    let(:year) { 1500 }
    it do
      is_expected.to be_invalid
    end
  end
end
