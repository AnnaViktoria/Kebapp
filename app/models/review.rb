class Review < ApplicationRecord
  belongs_to :kebab_shop

  validates :user, presence: true, uniqueness: { scope: :kebab_shop }
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :content, presence: true
end
