require 'rails_helper'

describe User, type: :model do
  it do
    should validate_presence_of(:first_name)
  end

  subject(:user) do
    create(:user)
  end

  it do
    is_expected.to be_valid
  end
end
