require 'rails_helper'

RSpec.describe "platform_assistive_technologies/index", type: :view do
  before(:each) do
    assign(:platform_assistive_technologies, [
      PlatformAssistiveTechnology.create!(
        :platform => nil,
        :assistive_technology => nil
      ),
      PlatformAssistiveTechnology.create!(
        :platform => nil,
        :assistive_technology => nil
      )
    ])
  end

  it "renders a list of platform_assistive_technologies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
