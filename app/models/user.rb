class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :locations
  has_many :goats

  validates :first_name, presence: true
  validates :last_name, presence: true, uniqueness: { scope: :first_name }
  validates :address, presence: true
  validates :description, length: { minimum: 10, maximum: 500 }
end
