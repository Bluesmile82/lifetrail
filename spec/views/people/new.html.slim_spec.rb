require 'rails_helper'

RSpec.describe "people/new", :type => :view do
  before(:each) do
    assign(:person, Person.new(
      :name => "MyString",
      :city => "MyString",
      :mood => "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_name[name=?]", "person[name]"

      assert_select "input#person_city[name=?]", "person[city]"

      assert_select "input#person_mood[name=?]", "person[mood]"
    end
  end
end
