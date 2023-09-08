require 'rails_helper'

RSpec.describe MarketService do
  describe 'class methods' do
    describe '.get_markets' do
      it 'returns all markets', :vcr do

          all_markets = MarketService.get_markets
          markets = all_markets[:data]

          expect(markets).to be_an(Array)
          expect(markets.count).to eq(846)
          expect(markets[0][:attributes]).to have_key(:name)
          expect(markets[0][:attributes]).to have_key(:street)
          expect(markets[0][:attributes]).to have_key(:city)
          expect(markets[0][:attributes]).to have_key(:county)
          expect(markets[0][:attributes]).to have_key(:state)
          expect(markets[0][:attributes]).to have_key(:zip)
          expect(markets[0][:attributes]).to have_key(:lat)
          expect(markets[0][:attributes]).to have_key(:lon)
          expect(markets[0][:attributes]).to have_key(:vendor_count)
      end
    end
  end
end