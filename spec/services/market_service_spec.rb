require 'rails_helper'

RSpec.describe MarketService do
  describe 'class methods' do
    describe '.get_markets' do
      it 'returns all markets', :vcr do

          all_markets = MarketService.get_markets
          markets = all_markets[:data]

          expect(markets).to be_an(Array)
          expect(markets.count).to eq(846)
      end

      it '.get_market, returns a single market', :vcr do 
        market = MarketService.get_market(325933)

        expect(market).to be_a(Hash)
        expect(market.count).to eq(1)
      end

      it '.get_vendors, returns all vendors for a market', :vcr do 
        vendors = MarketService.get_vendors(325933)[:data]
        
        expect(vendors).to be_an(Array)
        expect(vendors.count).to eq(13)
      end

      it '.get_vendor, returns a single vendor', :vcr do 
        vendor = MarketService.get_vendor(55636)

        expect(vendor).to be_a(Hash)
        expect(vendor.count).to eq(1)
      end
    end
  end
end