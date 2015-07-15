# == Schema Information
#
# Table name: pats
#
#  id                      :integer          not null, primary key
#  platform_id             :integer
#  assistive_technology_id :integer
#  created_at              :datetime
#  updated_at              :datetime
#
# Indexes
#
#  index_pats_on_assistive_technology_id  (assistive_technology_id)
#  index_pats_on_platform_id              (platform_id)
#

require 'test_helper'

class PatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
