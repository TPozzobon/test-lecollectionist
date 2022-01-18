# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Shop, type: :model do
  shop = described_class.new(name: 'Coco Bongo')

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(shop).to be_valid
    end

    it 'is not valid without a name' do
      shop.name = nil
      expect(shop).to_not be_valid
    end
  end
end
