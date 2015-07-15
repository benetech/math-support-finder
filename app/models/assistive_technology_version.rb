# == Schema Information
#
# Table name: assistive_technology_versions
#
#  id                      :integer          not null, primary key
#  assistive_technology_id :integer
#  version                 :float(24)
#  notes                   :text(65535)
#  created_at              :datetime
#  updated_at              :datetime
#
# Indexes
#
#  index_assistive_technology_versions_on_assistive_technology_id  (assistive_technology_id)
#

class AssistiveTechnologyVersion < ActiveRecord::Base

  belongs_to :assistive_technology
end
