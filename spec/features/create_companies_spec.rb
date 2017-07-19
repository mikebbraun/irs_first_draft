require 'rails_helper'

RSpec.feature "create a company", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"

  before do
    # visit home page
    visit root_path

    # click on "Create a Company Profile"
    click_link "Create a Company Profile"
  end

  it "creates a company successfully" do
    # given they visit the homepage
    # and they click on "Create a Company Profile"
    # when they fill in the form fully
    # then show a welcome message

    fill_in "Company name", with: "Produce Company"
    fill_in "Full name", with: "Ed Toro"
    fill_in "Email", with: "test@example.com"
    fill_in "Phone number", with: "1234567890"
    # check "Partnership", :unchecked
    fill_in "Employees", with: 12
    # check "Contractors", :checked
    fill_in "Business type", with: "Wholesale"
    fill_in "Location", with: "Florida"

    # click "Create Company!"
    click_button "Create Company!"

    expect(page).to have_content "Welcome!"
  end
end
