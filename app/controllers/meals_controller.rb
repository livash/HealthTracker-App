class MealsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @meals = Meal.all
    @user = current_user
  end
  
  def new
    @meal = Meal.new
  end
  
  def create
    @meal = Meal.new(params[:meal])
    @meal.user_id = current_user.id
    @meal.save
    redirect_to meals_url
  end
end
