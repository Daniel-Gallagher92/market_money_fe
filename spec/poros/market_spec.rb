require 'rails_helper'

RSpec.describe Market do
  describe 'initialize' do
    it 'exists w/ attributes' do 
      data = {
        attributes: {
          name: "Cherry Creek Farmers Market",
          street: "E. Cherry Creek Dr. & S. University Blvd.",
          city: "Denver",
          state: "Colorado",
          zip: "80209",
        }
      }

      market = Market.new(data)

      expect(market).to be_a(Market)
      expect(market.name).to eq("Cherry Creek Farmers Market")
      expect(market.street).to eq("E. Cherry Creek Dr. & S. University Blvd.")
      expect(market.city).to eq("Denver")
      expect(market.state).to eq("Colorado")
      expect(market.zip).to eq("80209")
    end
  end
end