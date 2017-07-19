require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :company_name => "MyString",
      :full_name => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :partnership => false,
      :employees => 1,
      :contractors => false,
      :business_type => "MyString",
      :location => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input[name=?]", "company[company_name]"

      assert_select "input[name=?]", "company[full_name]"

      assert_select "input[name=?]", "company[email]"

      assert_select "input[name=?]", "company[phone_number]"

      assert_select "input[name=?]", "company[partnership]"

      assert_select "input[name=?]", "company[employees]"

      assert_select "input[name=?]", "company[contractors]"

      assert_select "input[name=?]", "company[business_type]"

      assert_select "input[name=?]", "company[location]"
    end
  end
end
