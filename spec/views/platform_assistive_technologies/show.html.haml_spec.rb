require 'rails_helper'

RSpec.describe "platform_assistive_technologies/show", type: :view do
  before(:each) do
    @platform_assistive_technology = assign(:platform_assistive_technology, PlatformAssistiveTechnology.create!(
      :platform => nil,
      :assistive_technology => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
