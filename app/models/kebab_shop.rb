class KebabShop < ApplicationRecord
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, format: { with: /\A\d+\z/, message: "Price should be a number." }
  validates :location, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :closing_time, presence: true, time: true
  validates :start_time, presence: true, time: true
end
