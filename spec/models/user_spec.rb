require 'rails_helper'

describe User, type: :model do
  it do
    should validate_presence_of(:first_name)
  end

  subject(:user) do
    create(:user)
  end

  it { is_expected.to be_valid }

  describe '#create' do
    context 'When the email is nil' do
      it { expect(build(:user, email: nil)).to be_invalid }
    end

    context 'when the email already exist in the database'
    let!(:user1) { create :user, email: 'esteemailyaexiste@widergy.com' }
    it { expect(build(:user, email: 'esteemailyaexiste@widergy.com')).to be_invalid }
  end
end
