# == Schema Information
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

class AssistiveTechnologyVersion < ActiveRecord::Base
  belongs_to :assistive_technology
  has_many :configurations, dependent: :nullify

  validates_associated :assistive_technology
  validates_presence_of :assistive_technology, :version
  validates :version, numericality: true

end
