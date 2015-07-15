# == Schema Information
#
# Table name: content_source_configurations
#
#  id                :integer          not null, primary key
#  configuration_id  :integer
#  content_source_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_content_source_configurations_on_configuration_id   (configuration_id)
#  index_content_source_configurations_on_content_source_id  (content_source_id)
#

require 'test_helper'

class ContentSourceConfigurationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
