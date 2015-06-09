class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    meal = Meal.new params[:meal].permit(:date)
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


end
