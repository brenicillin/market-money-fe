require 'rails_helper'

RSpec.describe MarketService do
  describe 'instance methods' do
    it '#markets' do
      response = MarketService.new.markets[:data]

      first_market = response.first

      expect(response).to be_an(Array)
      expect(response.count).to eq(846)

      expect(first_market).to have_key(:id)
      expect(first_market).to have_key(:type)
      expect(first_market[:type]).to eq("market")
    end

    it '#market' do
      response = MarketService.new.market(322458)[:data]

      expect(response).to be_a(Hash)
      expect(response).to have_key(:id)
      expect(response).to have_key(:type)
      expect(response[:type]).to eq("market")
      expect(response[:attributes]).to have_key(:name)
      expect(response[:attributes]).to have_key(:street)
      expect(response[:attributes]).to have_key(:city)
      expect(response[:attributes]).to have_key(:county)
      expect(response[:attributes]).to have_key(:state)
      expect(response[:attributes]).to have_key(:zip)
      expect(response[:attributes]).to have_key(:lat)
      expect(response[:attributes]).to have_key(:lon)
      expect(response[:attributes]).to have_key(:vendor_count)
    end
  end
end