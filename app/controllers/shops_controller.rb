# frozen_string_literal: true

class ShopsController < ApplicationController
  def index
    @shops = Shop.all

    @schedules = Schedule.all
    today = Date.current.strftime('%A')
    days = @schedules.map { |el| el.day.capitalize }
    today_index = days.index(today)
    @ordered_days = days.rotate(today_index)
  end
end
