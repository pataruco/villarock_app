class Meal < ActiveRecord::Base
  has_one :recipe
  
  :date
  #validates :date, presence: true
  enum category: [ :breakfast, :lunch, :dinner ]
end
