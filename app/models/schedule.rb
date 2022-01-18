# frozen_string_literal: true

class Schedule < ApplicationRecord
  belongs_to :shop

  validates :day, presence: true
  validate :consistency_schedules

  def consistency_schedules
    errors.add(t("home.errors.schedule")) unless :open_am > :close_am || :close_am > :open_pm || :open_pm > :close_pm
  end
end
