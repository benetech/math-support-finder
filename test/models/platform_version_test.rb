# == Schema Information
#
# Table name: platform_versions
#
#  id          :integer          not null, primary key
#  platform_id :integer
#  version     :float
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_platform_versions_on_platform_id  (platform_id)
#

require 'test_helper'

class PlatformVersionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
