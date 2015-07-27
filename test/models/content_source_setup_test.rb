# == Schema Infile_formation
#
# Table name: content_source_setups
#
#  id                :integer          not null, primary key
#  setup_id          :integer
#  content_source_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_content_source_setups_on_content_source_id  (content_source_id)
#  index_content_source_setups_on_setup_id           (setup_id)
#

require 'test_helper'

class ContentSourceSetupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
