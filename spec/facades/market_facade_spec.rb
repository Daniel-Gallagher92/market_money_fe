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

  describe 'instance methods' do
    describe '#get_markets' do
      it 'returns all markets' do
        expect(@market_facade).to be_an(Array)

        @market_facade.each do |market|
          expect(market).to be_a(Market)
        end
      end

      it 'returns a single market' do 
        market = MarketFacade.get_market(322458)

        expect(market).to be_a(Market)
        expect(market.name).to eq("14&U Farmers' Market")
        expect(market.street).to eq("1400 U Street NW ")
      end
    end
  end
end