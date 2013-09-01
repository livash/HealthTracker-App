class MealsController < ApplicationController
  before_filter :authenticate_user!
  
  def edit
    @meal = Meal.find(params[:id])
    if @meal
      render :edit
    else
      redirect_to meals_url
    end
  end
  
  def index
    @meals = current_user.meals
    @user = current_user
  end
  
  def new
    @meal = Meal.new
    @feeling = Feeling.new
  end
  
  def create
    @meal = Meal.new(params[:meal])
    @meal.user_id = current_user.id
    @meal.save!
    if params[:feeling][:description].length > 1
      @feeling = Feeling.new(params[:feeling])
      @feeling.meal_id = @meal.id
      @feeling.save!
    end
    redirect_to meals_url
  end
  def show
    @meal = Meal.find_by_id(params[:id])
  end
  
  def update
    
  end
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_url
  end
end
