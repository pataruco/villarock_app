class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    @page = 'Ingredients'
  end

  def new
    @ingredient = Ingredient.new
    @page = 'Ingredients'
  end

  def create
    @page = 'Ingredients'
    ingredient = Ingredient.new params[:ingredient].permit(:name)

    if ingredient.save
      redirect_to ingredients_path
    else
      render 'new'
    end
  end

  def show
    @page = 'Ingredients'
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @page = 'Ingredients'
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @page = 'Ingredients'
    ingredient = Ingredient.find(params[:id])
    ingredient.update(ingredient_params)
    redirect_to(ingredients_path)
  end

  def destroy
    @page = 'Ingredients'
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    redirect_to(ingredients_path)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :stock)
  end






end #End of IngredientsController
