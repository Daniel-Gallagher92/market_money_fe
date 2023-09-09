require 'rails_helper'

RSpec.describe 'Market Show Page' do
  before :each do
    @market = MarketFacade.get_market(322458)
    @vendors = MarketFacade.get_vendors(322458)
  end

  it 'displays market name, address, and vendors' do    
    visit '/markets/322458'


    expect(page).to have_content(@market.name)
    
    within '#market-address' do
      expect(page).to have_content("1400 U Street NW")
      expect(page).to have_content(@market.city)
      expect(page).to have_content(@market.state)
      expect(page).to have_content(@market.zip)
    end
  end
end