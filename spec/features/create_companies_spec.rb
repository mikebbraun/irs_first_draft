require 'rails_helper'

RSpec.feature "create a company", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"

  before do
    visit new_company_path
  end

  it "creates a company successfully" do
    # given they visit the homepage
    # and they sign in
    # and they click on "Create a New Company Profile"
    # when they fill in the form fully
    # then show a welcome message

    fill_in "Company name", with: "Produce Company"
    fill_in "Full name", with: "Ed Toro"
    fill_in "Email", with: "test@example.com"
    fill_in "Phone number", with: "1234567890"
    # check "Partnership", :unchecked
    fill_in "Employees", with: 12 #should be boolean
    # check "Contractors", :checked
    fill_in "Business type", with: "Wholesale"
    # fill_in "Location", with: "Florida" #location not needed..

    # click "Create Company!"
    click_button "Create Company!"

    expect(page).to have_content "Company was successfully created."
  end
end
