require 'rails_helper'

RSpec.describe "PlatformAssistiveTechnologies", type: :request do
  describe "GET /platform_assistive_technologies" do
    it "works! (now write some real specs)" do
      get platform_assistive_technologies_path
      expect(response).to have_http_status(200)
    end
  end
end
