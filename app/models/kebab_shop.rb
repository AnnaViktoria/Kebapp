class KebabShop < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :reviews, dependent: :destroy
  has_many :schedules, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  def coordinates
    [latitude, longitude]
  end
end
