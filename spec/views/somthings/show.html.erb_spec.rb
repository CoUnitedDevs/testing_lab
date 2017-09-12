require 'rails_helper'

RSpec.describe "somthings/show", type: :view do
  before(:each) do
    @somthing = assign(:somthing, Somthing.create!(
      :so => "So",
      :arun => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/So/)
    expect(rendered).to match(/2/)
  end
end
