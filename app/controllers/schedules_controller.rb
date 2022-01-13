# frozen_string_literal: true

class SchedulesController < ApplicationController
  def create
    @shop = Shop.find(params[:shop_id])

    @schedule = Schedule.new(schedule_params)

    @schedule.shop = @shop

    if @schedule.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:day)
  end
end
