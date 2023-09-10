require 'rails_helper'

RSpec.describe 'Market Index Page' do
  before :each do
    @markets = MarketFacade.get_markets
  end

  it 'displays all markets with name, city, and state' do
    
    visit '/markets'

    expect(page).to have_content('Markets')
    expect(page).to have_content('Name')
    expect(page).to have_content('City')
    expect(page).to have_content('State')

    within("#market-#{@markets.first.id}") do
      expect(page).to have_content(@markets.first.name)
      expect(page).to have_content(@markets.first.city)
      expect(page).to have_content(@markets.first.state)
      expect(page).to have_button('More Info')

      click_button('More Info')
      expect(current_path).to eq("/markets/#{@markets.first.id}")
    end
  end
end