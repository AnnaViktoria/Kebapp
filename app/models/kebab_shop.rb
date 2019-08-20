class KebabShop < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :schedules, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
end
