require 'rails_helper'

RSpec.describe "people/edit", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :name => "MyString",
      :city => "MyString",
      :mood => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_name[name=?]", "person[name]"

      assert_select "input#person_city[name=?]", "person[city]"

      assert_select "input#person_mood[name=?]", "person[mood]"
    end
  end
end
