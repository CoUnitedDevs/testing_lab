require 'rails_helper'

RSpec.describe "somthings/new", type: :view do
  before(:each) do
    assign(:somthing, Somthing.new(
      :so => "MyString",
      :arun => 1
    ))
  end

  it "renders new somthing form" do
    render

    assert_select "form[action=?][method=?]", somthings_path, "post" do

      assert_select "input#somthing_so[name=?]", "somthing[so]"

      assert_select "input#somthing_arun[name=?]", "somthing[arun]"
    end
  end
end
