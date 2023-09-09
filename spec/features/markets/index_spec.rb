require 'rails_helper'

RSpec.describe 'Market Index Page' do
  before :each do
    @markets = MarketFacade.get_markets
  end

#   User Story 1 - Markets Index Page
# As a visitor,
# When I visit '/markets'
# I see all markets listed with their name, city and state
# When I click a button to see more info on that market
# I'm taken to that market's show page '/markets/:id'

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