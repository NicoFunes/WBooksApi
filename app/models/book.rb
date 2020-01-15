class Book < ApplicationRecord
  validates_presence_of :title, :author
  validate :check_year_in_range

  def check_year_in_range
    errors.add(:year, 'must be between 1900 and 2020 ') if year.to_i > 2020 || year.to_i < 1900
  end
end
