require 'rails_helper'

RSpec.feature "CreateNewUsers", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"

  it "creates a new user successfully" do
    # visit home page
    visit root_path

    # go to sign in
    click_link "Or Sign In!"

    # sign in
    fill_in "username", with: "abc"
    fill_in "password", with: "abc123"
    click_button 'Log in'

    # expect to see company page
    save_and_open_page
    expect(page).to have_content "Companies"
  end

end
