class Recipe < ActiveRecord::Base
  belongs_to :meal
  
  validates :name, presence: :true
  :preparation
  :meal_id
end
