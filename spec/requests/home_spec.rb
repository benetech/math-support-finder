require 'rails_helper'
  
feature "Visiting root" do
  it "renders a valid root page" do
    visit root_path
    expect(page).to be_valid_markup
    expect(page).to have_content "Math Support Matrix"
  end
end
