require 'rails_helper'

RSpec.feature "generate forms", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  before do
    Company.create(
    company_name: "CN",
    full_name: "FN",
    email: 'test@example.com',
    phone_number: '(abc) 123-1234',
    partnership: false,
    employees: 56,
    contractors: false,
    business_type: "Farming",
    location: "USA"
    )
  end

  it "should generate forms based on company profile" do
    visit company_path(id: 1)
    expect(page).to have_content("Generate Forms")
  end
end
