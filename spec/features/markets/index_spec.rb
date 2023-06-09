require 'rails_helper'

RSpec.describe 'Market Index Page' do
  describe 'As a visitor' do
    it 'I see the name, city, and state of each market' do
      visit '/markets'

      within '#heading' do
        expect(page).to have_content("Markets")
      end

      within '#markets' do
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content("Washington")
        expect(page).to have_content("District of Columbia")
      end
    end
  end
end