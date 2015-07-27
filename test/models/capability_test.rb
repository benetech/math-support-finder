# == Schema Infile_formation
#
# Table name: capabilities
#
#  id                     :integer          not null, primary key
#  feature_id             :integer
#  affordance_id          :integer
#  setup_id               :integer
#  verification_status_id :integer
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_capabilities_on_affordance_id           (affordance_id)
#  index_capabilities_on_feature_id              (feature_id)
#  index_capabilities_on_setup_id                (setup_id)
#  index_capabilities_on_verification_status_id  (verification_status_id)
#

require 'test_helper'

class CapabilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
