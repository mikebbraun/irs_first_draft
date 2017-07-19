require 'rails_helper'

RSpec.feature "CreateCompanies", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"

  before do
    # visit home page
    visit root_path

    # click on "Become a BabySATter"
    click_link "Create a Company Profile"
  end

  it "creates a company successfully" do
    # given they visit the homepage
    # and they click on "Create a Company Profile"
    # when they fill in the form fully
    # then show a welcome message

    fill_in "Company Name", with: "Produce Company"
    fill_in "Full Name", with: "Ed Toro"
    fill_in "Email", with: "test@example.com"
    fill_in "Phone number", with: "1234567890"
    fill_in "Partnership", with: false
    fill_in "Employees", with: 12
    fill_in "Contractors", with: true
    fill_in "Business Type", with: "Wholesale"
    fill_in "Location", with: true
    
  end
end
