# == Schema Information
#
# Table name: renderer_versions
#
#  id          :integer          not null, primary key
#  renderer_id :integer
#  version     :float(24)
#  notes       :text(65535)
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
