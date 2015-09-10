require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :name => "Name",
        :city => "City",
        :mood => "Mood"
      ),
      Person.create!(
        :name => "Name",
        :city => "City",
        :mood => "Mood"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Mood".to_s, :count => 2
  end
end
