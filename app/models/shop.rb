# frozen_string_literal: true

class Shop < ApplicationRecord
  has_many :schedules

  validates :name, presence: true
end
