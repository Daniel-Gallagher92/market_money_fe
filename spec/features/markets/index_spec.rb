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
end