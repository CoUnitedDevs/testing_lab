require 'rails_helper'

RSpec.describe "somthings/edit", type: :view do
  before(:each) do
    @somthing = assign(:somthing, Somthing.create!(
      :so => "MyString",
      :arun => 1
    ))
  end

  it "renders the edit somthing form" do
    render

    assert_select "form[action=?][method=?]", somthing_path(@somthing), "post" do

      assert_select "input#somthing_so[name=?]", "somthing[so]"

      assert_select "input#somthing_arun[name=?]", "somthing[arun]"
    end
  end
end
