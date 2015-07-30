require 'rails_helper'

RSpec.describe "platform_assistive_technologies/new", type: :view do
  before(:each) do
    assign(:platform_assistive_technology, PlatformAssistiveTechnology.new(
      :platform => nil,
      :assistive_technology => nil
    ))
  end

  it "renders new platform_assistive_technology form" do
    render

    assert_select "form[action=?][method=?]", platform_assistive_technologies_path, "post" do

      assert_select "input#platform_assistive_technology_platform_id[name=?]", "platform_assistive_technology[platform_id]"

      assert_select "input#platform_assistive_technology_assistive_technology_id[name=?]", "platform_assistive_technology[assistive_technology_id]"
    end
  end
end
