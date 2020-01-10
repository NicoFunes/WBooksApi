require 'rails_helper'

describe User, type: :model do
  it do
    should validate_presence_of(:first_name)
  end

  subject(:user) do
    User.new(
      first_name: first_name, last_name: last_name, email: email, password: password,
      password_confirmation: password_confirmation
    )
  end

  let(:first_name)            { Faker::Name.first_name }
  let(:last_name)             { Faker::Name.last_name }
  let(:email)                 { Faker::Internet.email }
  let(:password)              { 'password' }
  let(:password_confirmation) { 'password' }

  it do
    is_expected.to be_valid
  end
end
