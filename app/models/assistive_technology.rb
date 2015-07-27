# == Schema Information
#
# Table name: assistive_technologies
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class AssistiveTechnology < ActiveRecord::Base
  has_many :assistive_technology_versions
  has_many :configurations, through: :assitive_technology_versions

  validates_presence_of :title

  def to_s
    title
  end
end
