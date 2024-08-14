class Location < ApplicationRecord
  belongs_to :user
  belongs_to :goat

  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than_or_equal_to: :start_date }
  validates :details, presence: true, length: { minumum:10, maximum:500 }

end
