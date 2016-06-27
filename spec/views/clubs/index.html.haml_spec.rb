require 'rails_helper'

RSpec.describe "clubs/index", type: :view do
  before(:each) do
    assign(:clubs, [
      Club.create!(
        :name => "Name",
        :number => "Number",
        :location => "Location",
        :email => "Email",
        :site => "Site",
        :telephone => "Telephone"
      ),
      Club.create!(
        :name => "Name",
        :number => "Number",
        :location => "Location",
        :email => "Email",
        :site => "Site",
        :telephone => "Telephone"
      )
    ])
  end

  it "renders a list of clubs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
  end
end
