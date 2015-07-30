require 'rails_helper'

RSpec.describe "platform_assistive_technologies/edit", type: :view do
  before(:each) do
    @platform_assistive_technology = assign(:platform_assistive_technology, PlatformAssistiveTechnology.create!(
      :platform => nil,
      :assistive_technology => nil
    ))
  end

  it "renders the edit platform_assistive_technology form" do
    render

    assert_select "form[action=?][method=?]", platform_assistive_technology_path(@platform_assistive_technology), "post" do

      assert_select "input#platform_assistive_technology_platform_id[name=?]", "platform_assistive_technology[platform_id]"

      assert_select "input#platform_assistive_technology_assistive_technology_id[name=?]", "platform_assistive_technology[assistive_technology_id]"
    end
  end
end
