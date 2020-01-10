require 'rails_helper'

describe Book, type: :model do
  it do
    should validate_presence_of(:title)
  end
end
