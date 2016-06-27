require 'rails_helper'

RSpec.describe "clubs/new", type: :view do
  before(:each) do
    assign(:club, Club.new(
      :name => "MyString",
      :number => "MyString",
      :location => "MyString",
      :email => "MyString",
      :site => "MyString",
      :telephone => "MyString"
    ))
  end

  it "renders new club form" do
    render

    assert_select "form[action=?][method=?]", clubs_path, "post" do

      assert_select "input#club_name[name=?]", "club[name]"

      assert_select "input#club_number[name=?]", "club[number]"

      assert_select "input#club_location[name=?]", "club[location]"

      assert_select "input#club_email[name=?]", "club[email]"

      assert_select "input#club_site[name=?]", "club[site]"

      assert_select "input#club_telephone[name=?]", "club[telephone]"
    end
  end
end
