class KebabShop < ApplicationRecord
  include PgSearch
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :reviews, dependent: :destroy
  has_many :schedules, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  pg_search_scope :search_by_name, against: [:name],
    using: {
      tsearch: { prefix: true }
    }

  def coordinates
    [latitude, longitude]
  end

  def opening_hours_today
    weekdays = %w(sunday monday tuesday wednesday thursday friday saturday)
    today_idx = Date.today.wday
    today_string = weekdays[today_idx]
    today_schedule = schedules.find_by_weekday(today_string)
    return "#{today_schedule.opening_hour}:00-#{today_schedule.closing_hour}:00"
  end
end
