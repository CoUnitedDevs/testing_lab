require 'rails_helper'

RSpec.describe "somthings/index", type: :view do
  before(:each) do
    assign(:somthings, [
      Somthing.create!(
        :so => "So",
        :arun => 2
      ),
      Somthing.create!(
        :so => "So",
        :arun => 2
      )
    ])
  end

  it "renders a list of somthings" do
    render
    assert_select "tr>td", :text => "So".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
