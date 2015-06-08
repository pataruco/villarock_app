class Meal < ActiveRecord::Base

  validates :date, presence: true
  enum category: [ :breakfast, :lunch, :dinner ]
end
