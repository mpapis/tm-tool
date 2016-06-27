require 'rails_helper'

RSpec.describe "clubs/show", type: :view do
  before(:each) do
    @club = assign(:club, Club.create!(
      :name => "Name",
      :number => "Number",
      :location => "Location",
      :email => "Email",
      :site => "Site",
      :telephone => "Telephone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Site/)
    expect(rendered).to match(/Telephone/)
  end
end
