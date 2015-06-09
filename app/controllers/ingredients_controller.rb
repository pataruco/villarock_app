class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.new params[:ingredient].permit(:name)

    if ingredient.save
      redirect_to ingredients_path
    else
      render 'new'
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end







end #End of IngredientsController
