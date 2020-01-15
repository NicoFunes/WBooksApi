require 'rails_helper'
require 'pp'

describe Book, type: :model do
  it { should validate_presence_of(:title) }

  subject(:book) do
    create(:book)
  end

  it { is_expected.to be_valid }

  describe '#create' do
    context 'When the title is nil' do
      it { expect(build(:book, title: nil)).to be_invalid }
    end

    context 'When the author is nil' do
      it { expect(build(:book, author: nil)).to be_invalid }
    end

    context 'when the year is over the allowed range' do
      it { expect(build(:book, year: 2900)).to be_invalid }
    end

    context 'when the year is under the allowed range' do
      it { expect(build(:book, year: 1500)).to be_invalid }
    end
  end
end
