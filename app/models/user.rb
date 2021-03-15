class User < ActiveRecord::Base
  has_many :work_logs
  validates :name, presence: true
  validates_length_of :preferred_working_hour_per_day, maximum: 16, allow_blank: false
end
