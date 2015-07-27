# == Schema Infile_formation
#
# Table name: assistive_technology_versions
#
#  id                      :integer          not null, primary key
#  assistive_technology_id :integer
#  version                 :float
#  notes                   :text
#  created_at              :datetime
#  updated_at              :datetime
#
# Indexes
#
#  index_assistive_technology_versions_on_assistive_technology_id  (assistive_technology_id)
#

require 'test_helper'

class AssistiveTechnologyVersionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
