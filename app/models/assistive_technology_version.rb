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

class AssistiveTechnologyVersion < ActiveRecord::Base
  belongs_to :assistive_technology
  has_many :setups, dependent: :nullify

  validates_associated :assistive_technology
  validates_presence_of :assistive_technology, :version
  validates :version, numericality: true

  def to_s
    [assistive_technology.to_s, version.to_s].join(" ")
  end

end
