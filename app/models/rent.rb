class Rent < ApplicationRecord
  belongs_to :user
  has_one :book
end
