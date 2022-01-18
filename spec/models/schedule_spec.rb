# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Schedule, type: :model do
  shop = Shop.create(name: 'Le troc')
  schedule = described_class.new(day: 'monday',
                                 open_am: '10:30',
                                 close_am: '15:00',
                                 open_pm: '17:00',
                                 close_pm: '20:00',
                                 shop_id: shop.id)

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(schedule).to be_valid
    end

    it 'is not valid without a day' do
      schedule.day = nil
      expect(schedule).to_not be_valid
    end

    it 'is not valid if open_am > close_am' do
      schedule.close_am = '08:00'
      expect(schedule).to_not be_valid
    end
  end
end
