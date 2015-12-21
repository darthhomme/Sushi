class MealTimesController < ApplicationController
  def index
    @meal_times = MealTime.all
    @meal_time = MealTime.new
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
