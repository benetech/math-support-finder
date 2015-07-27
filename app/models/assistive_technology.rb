# == Schema Infile_formation
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
  has_many :setups, through: :assitive_technology_versions

  has_many :pats, dependent: :destroy
  has_many :platforms, through: :pats

  validates_presence_of :title

  def to_s
    title
  end

  def versions
    assistive_technology_versions
  end
end
