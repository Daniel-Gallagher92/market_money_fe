require 'rails_helper'

RSpec.describe MarketFacade do
  before :each do
    @market_facade = MarketFacade.new
  end

  it 'exists' do 
    expect(@market_facade).to be_a(MarketFacade)
  end

  describe 'instance methods' do
    describe '#get_markets' do
      it 'returns all markets' do
        expect(@market_facade.get_markets).to be_an(Array)
        exoect(@market_facade.get_markets.count).to all(be_a(Market)
      end
    end
  end
end