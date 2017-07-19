require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :company_name => "Company Name",
        :full_name => "Full Name",
        :email => "Email",
        :phone_number => "Phone Number",
        :partnership => false,
        :employees => 2,
        :contractors => false,
        :business_type => "Business Type",
        :location => "Location"
      ),
      Company.create!(
        :company_name => "Company Name",
        :full_name => "Full Name",
        :email => "Email",
        :phone_number => "Phone Number",
        :partnership => false,
        :employees => 2,
        :contractors => false,
        :business_type => "Business Type",
        :location => "Location"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Business Type".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
