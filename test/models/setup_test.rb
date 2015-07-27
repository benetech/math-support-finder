# == Schema Information
#
# Table name: setups
#
#  id                              :integer          not null, primary key
#  platform_version_id             :integer
#  renderer_version_id             :integer
#  browser_reader_version_id       :integer
#  assistive_technology_version_id :integer
#  file_format_id                  :integer
#  workflow_status_id              :integer
#  created_at                      :datetime
#  updated_at                      :datetime
#
# Indexes
#
#  index_setups_on_assistive_technology_version_id  (assistive_technology_version_id)
#  index_setups_on_browser_reader_version_id        (browser_reader_version_id)
#  index_setups_on_file_format_id                   (file_format_id)
#  index_setups_on_platform_version_id              (platform_version_id)
#  index_setups_on_renderer_version_id              (renderer_version_id)
#  index_setups_on_workflow_status_id               (workflow_status_id)
#

# == Schema Infile_formation
#
# Table name: setups
#
#  id                              :integer          not null, primary key
#  platform_version_id             :integer
#  renderer_version_id             :integer
#  browser_reader_version_id       :integer
#  assistive_technology_version_id :integer
#  file_format_id                       :integer
#  workflow_status_id              :integer
#  created_at                      :datetime
#  updated_at                      :datetime
#
# Indexes
#
#  index_setups_on_assistive_technology_version_id  (assistive_technology_version_id)
#  index_setups_on_browser_reader_version_id        (browser_reader_version_id)
#  index_setups_on_file_format_id                        (file_format_id)
#  index_setups_on_platform_version_id              (platform_version_id)
#  index_setups_on_renderer_version_id              (renderer_version_id)
#  index_setups_on_workflow_status_id               (workflow_status_id)
#

require 'test_helper'

class SetupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
