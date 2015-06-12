class MealsController < ApplicationController
  def index
    @page = 'Meals'
    @meals = Meal.all.map { |meal| meal if meal.date.month == Date.today.month }.compact.sort_by &:date
  end

  def new
    @page = 'Meals'
    @meal = Meal.new
  end

  def create
    # @page = 'Meals'
    meal = Meal.new params[:meal].permit(:date, :category, :recipe_ids => [])
    if meal.save
      redirect_to meals_path
    else
      render 'new'
    end
  end

  def show
    @page = 'Meals'
    @meal = Meal.find(params[:id])
  end

  def edit
    @page = 'Meals'
    @meal = Meal.find(params[:id])
  end

  def update
    @page = 'Meals'
    meal = Meal.find(params[:id])
    meal.update(meal_params)
    redirect_to(meals_path)
  end

  def destroy
    @page = 'Meals'
    meal = Meal.find(params[:id])
    meal.destroy
    redirect_to(meals_path)
  end

  private

  def meal_params
    params.require(:meal).permit(:date, :category, :recipe_ids)
  end


end
