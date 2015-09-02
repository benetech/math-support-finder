# == Schema Information
#
# Table name: platform_assistive_technologies
#
#  id                      :integer          not null, primary key
#  platform_id             :integer
#  assistive_technology_id :integer
#  created_at              :datetime
#  updated_at              :datetime
#
# Indexes
#
#  pat_assistive_technology_id  (assistive_technology_id)
#  pat_platform_id              (platform_id)
#

class PlatformAssistiveTechnology < ActiveRecord::Base

  belongs_to :platform, touch: true
  belongs_to :assistive_technology, touch: true

  validates :platform_id, uniqueness: {scope: :assistive_technology_id}
  validates_presence_of :assistive_technology, :platform
  validates_associated :assistive_technology, :platform

  def to_s
    [platform.to_s, assistive_technology.to_s].join(" - ")
  end

end
