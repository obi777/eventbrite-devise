class Attendance < ApplicationRecord
	

  belongs_to :admin, class_name: 'User'
  has_many :attendances
  has_many :participants, class_name: 'User', through: :attendances

  validates :start_date, presence: true, start_date: true
  validates :duration, presence: true, duration: true
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 1000 }
  validates :location, presence: true

end
