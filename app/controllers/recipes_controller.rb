class RecipesController < ApplicationController
  def index
    @page = 'Recipies'
    @recipes = Recipe.all
  end

  def new
    @page = 'Recipies'
    @recipe = Recipe.new
  end

  def create
    @page = 'Recipies'
    recipe = Recipe.new params[:recipe].permit(:name, :preparation, :ingredient_ids => [])
    if recipe.save
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  def show
    @page = 'Recipies'
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @page = 'Recipies'
    @recipe = Recipe.find(params[:id])
  end

  def update
    @page = 'Recipies'
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end

  def destroy
    @page = 'Recipies'
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation)
  end


end
