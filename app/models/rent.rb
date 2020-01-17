class Rent < ApplicationRecord
  belongs_to :user
  validates_presence_of :user
  has_one :book
  validates_presence_of :book
  validates :from, :to, presence: true
  validate :from_date_after_to_date

  private

  def from_date_after_to_date
    errors.add(:to, 'to must be after the from date') if :from > :to
  end
end
