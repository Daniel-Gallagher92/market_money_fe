require 'rails_helper'

RSpec.describe 'Vendor Show Page' do 
  describe 'vendors/:id' do 
    it 'displays a single vendor w/ their information' do 
      visit '/vendors/55636'
      
      expect(page).to have_content("Elevated Elixir")

      within '#contact-info' do
        expect(page).to have_content("Elevated kombucha with premium tea and herbs for a refined taste.")
        expect(page).to have_content("Melida Hane LLD")
        expect(page).to have_content("928.894.1161")
        expect(page).to have_content("Credit Accepted?: false")
      end
    end
  end
end