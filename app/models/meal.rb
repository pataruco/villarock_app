class Meal < ActiveRecord::Base
  has_one :recipe
  
  validates :date, presence: true
  enum category: [ :breakfast, :lunch, :dinner ]
end
