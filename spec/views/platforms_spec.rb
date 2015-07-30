require 'rails_helper'
  
feature "Visiting platforms" do
  it "renders a valid page" do
    visit platforms_path
    #expect(page).to be_valid_markup
    expect(page).to be_accessible_markup
  end
end
