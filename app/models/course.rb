class Course < ApplicationRecord
  has_many :schedules
  has_many :users, :through => :schedules
  has_many :notes
end
