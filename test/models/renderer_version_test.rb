# == Schema Information
#
# Table name: renderer_versions
#
#  id          :integer          not null, primary key
#  renderer_id :integer
#  version     :float
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_renderer_versions_on_renderer_id  (renderer_id)
#

require 'test_helper'

class RendererVersionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
