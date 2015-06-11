class MealsController < ApplicationController
  def index
    @meals = Meal.all.map { |meal| meal if meal.date.month == Date.today.month }.compact
  end

  def new
    @meal = Meal.new
  end

  def create
    meal = Meal.new params[:meal].permit(:date, :category, :recipe_ids => [])
    if meal.save
      redirect_to meals_path
    else
      render 'new'
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    meal = Meal.find(params[:id])
    meal.update(meal_params)
    redirect_to(meals_path)
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.destroy
    redirect_to(meals_path)
  end

  private

  def meal_params
    params.require(:meal).permit(:date, :category)
  end


end
