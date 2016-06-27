require 'rails_helper'

RSpec.describe "clubs/edit", type: :view do
  before(:each) do
    @club = assign(:club, Club.create!(
      :name => "MyString",
      :number => "MyString",
      :location => "MyString",
      :email => "MyString",
      :site => "MyString",
      :telephone => "MyString"
    ))
  end

  it "renders the edit club form" do
    render

    assert_select "form[action=?][method=?]", club_path(@club), "post" do

      assert_select "input#club_name[name=?]", "club[name]"

      assert_select "input#club_number[name=?]", "club[number]"

      assert_select "input#club_location[name=?]", "club[location]"

      assert_select "input#club_email[name=?]", "club[email]"

      assert_select "input#club_site[name=?]", "club[site]"

      assert_select "input#club_telephone[name=?]", "club[telephone]"
    end
  end
end
