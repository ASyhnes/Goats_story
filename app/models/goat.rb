class Goat < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: { scope: :user }
  validates :race, presence: true
  validates :description, presence: true, length: { minumum:10, maximum:500 }
  # validates :photo, presence: true
end
