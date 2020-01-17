require 'rails_helper'

describe Rent, type: :model do
  it do
    should validate_presence_of(:book)
  end

  describe '#create' do
    context 'When the to date is before the from date' do
      it { expect(build(:rent, from: 2 - 3 - 2018, to: 1 - 3 - 2018)).to be_invalid }
    end

    context 'When the book is nil' do
      it { expect(build(:rent, book_id: nil)).to be_invalid }
    end

    context 'When the user is nil' do
      it { expect(build(:rent, user_id: nil)).to be_invalid }
    end
  end
end
