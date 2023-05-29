require 'rails_helper'

RSpec.describe VendorService do
  describe 'instance methods' do
    it '#vendors' do
      response = VendorService.new.vendor(55823)[:data]

      vendor_attributes = response[:attributes]

      expect(response).to be_a(Hash)
      expect(response).to have_key(:id)
      expect(response).to have_key(:type)
      expect(response[:type]).to eq("vendor")

      expect(vendor_attributes).to have_key(:name)
      expect(vendor_attributes).to have_key(:description)
      expect(vendor_attributes).to have_key(:contact_name)
      expect(vendor_attributes).to have_key(:contact_phone)
      expect(vendor_attributes).to have_key(:credit_accepted)
    end
  end
end