class KebabShop < ApplicationRecord
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, format: { with: /\A\d+\z/, message: "Price should be a number." }
  validates :address, presence: true, uniqueness: true
end
