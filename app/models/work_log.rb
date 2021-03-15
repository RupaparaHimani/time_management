class WorkLog < ActiveRecord::Base
  belongs_to :user
  validates :work_date, :hours, :notes, presence: true
  validates_length_of :hours, maximum: 24, allow_blank: false
end
