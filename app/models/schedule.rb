class Schedule < ApplicationRecord
  belongs_to :courses
  belongs_to :users
end