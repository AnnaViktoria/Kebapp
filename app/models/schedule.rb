class Schedule < ApplicationRecord
  belongs_to :kebab_shop

  validates :opening_hour, presence: true, numericality: { only_integer: true }
  validates :closing_hour, presence: true, numericality: { only_integer: true }
  validates :weekday, presence: true
end
