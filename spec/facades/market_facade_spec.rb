require 'rails_helper'

RSpec.describe MarketFacade do
  before :each do
    @market_facade ||= MarketFacade.get_markets
  end

  it 'exists' do 
    expect(@market_facade).to be_an(Array)
    expect(@market_facade.count).to eq(846)

    @market_facade.each do |market|
      expect(market).to be_a(Market)
    end
  end

  describe 'class methods' do
    describe '.get_markets' do
      it 'returns all markets' do
        expect(@market_facade).to be_an(Array)

        @market_facade.each do |market|
          expect(market).to be_a(Market)
        end
      end

      it '.get_market, returns a single market' do 
        market = MarketFacade.get_market(325933)

        expect(market).to be_a(Market)
        expect(market.id).to eq("325933")
        expect(market.name).to eq("Henry County Farmers Market")
        expect(market.street).to eq("100 block of S Main Street")
        expect(market.city).to eq("New Castle")
        expect(market.state).to eq("Indiana")
        expect(market.zip).to eq("47632")
      end

      it '.get_vendors, returns all vendors for a market' do 
        vendors = MarketFacade.get_vendors(325933)

        expect(vendors).to be_an(Array)
        expect(vendors.count).to eq(13)
      end

      it '.get_vendor, returns a single vendor' do 
        vendor = MarketFacade.get_vendor(55636)

        expect(vendor).to be_a(Vendor)
        expect(vendor.id).to eq("55636")
        expect(vendor.name).to eq("Elevated Elixir")
        expect(vendor.description).to eq("Elevated kombucha with premium tea and herbs for a refined taste.")
        expect(vendor.contact_name).to eq("Melida Hane LLD")
        expect(vendor.contact_phone).to eq("928.894.1161")
        expect(vendor.credit_accepted).to eq(false)
      end
    end
  end
end