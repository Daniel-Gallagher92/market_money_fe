require 'rails_helper'

RSpec.describe Vendor do 
  it 'exists w/ attributes' do
    data = {
        id: 1,
      attributes: {
            name: "Denver Bread Company",
            description: "Breads, muffins, cookies, pies, and pastries",
            contact_phone: "303-555-1212",
            contact_name: "Jane Doe",
            credit_accepted: "true"
      }
    }

    vendor = Vendor.new(data)

    expect(vendor).to be_a(Vendor)
    expect(vendor.id).to eq(1)
    expect(vendor.name).to eq("Denver Bread Company")
    expect(vendor.description).to eq("Breads, muffins, cookies, pies, and pastries")
    expect(vendor.contact_phone).to eq("303-555-1212")
    expect(vendor.contact_name).to eq("Jane Doe")
    expect(vendor.credit_accepted).to eq("true")
  end
end