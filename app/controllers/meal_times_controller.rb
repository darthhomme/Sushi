class MealTimesController < ApplicationController
  def index
    @meal_time = MealTime.new
    @meal_times = MealTime.all
  end

  def create
    MealTime.create(meal_times_params)
    redirect_to meal_times_path
  end

  private

  def meal_times_params
    params.require(:meal_time).permit(:group_id, :order_id)
  end
end
