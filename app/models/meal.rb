class Meal < ActiveRecord::Base
  # has_one :recipe
  has_many :recipes
  
  #:date
  validates :date, presence: true
  enum category: [ :breakfast, :lunch, :dinner ]
end
