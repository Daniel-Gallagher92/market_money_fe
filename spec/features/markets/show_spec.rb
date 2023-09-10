require 'rails_helper'

RSpec.describe 'Market Show Page' do
  before :each do
    @market = MarketFacade.get_market(325933)
    @vendors = MarketFacade.get_vendors(325933)
  end

  it 'displays market name, address, and vendors' do    
    visit '/markets/325933'

    expect(page).to have_content("Henry County Farmers Market")

    within '#market-address' do
      expect(page).to have_content("100 block of S Main Street")
      expect(page).to have_content("New Castle")
      expect(page).to have_content("Indiana")
      expect(page).to have_content("47632")
    end

    expect(page).to have_content("Vendors at our Market:")
    expect(page).to have_link("Elevated Elixir")
    expect(page).to have_link("Rocky Mountain Ranch")

    click_link "Elevated Elixir"
    expect(current_path).to eq("/vendors/55636")
  end
end