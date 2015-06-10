class Recipe < ActiveRecord::Base
  belongs_to :meal
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes 
  validates :name, presence: :true
end
