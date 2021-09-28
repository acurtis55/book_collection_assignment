require 'rails_helper'

RSpec.describe "details/index", type: :view do
  before(:each) do
    assign(:details, [
      Detail.create!(
        title: "Title"
      ),
      Detail.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of details" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
