# == Schema Infile_formation
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

class Pat < ActiveRecord::Base

  belongs_to :platform
  belongs_to :assistive_technology

  validates_associated :platform, :assistive_technology
  validates_presence_of :platform, :assistive_technology
  validates :platform, uniqueness: {scope: :assistive_technology}

  def to_s
    [platform.to_s, assistive_technology.to_s].join(" - ")
  end
end
