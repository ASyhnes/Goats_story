class Goat < ApplicationRecord
  has_many_attached :photos

  belongs_to :user
  has_many :locations

  validates :name, presence: true, uniqueness: { scope: :user }
  validates :race, presence: true
  validates :description, presence: true, length: { minumum: 10, maximum: 500 }
  validates :photos, presence: true
end
