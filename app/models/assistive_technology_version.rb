# == Schema Information
#
# Table name: assistive_technology_versions
#
#  id                      :integer          not null, primary key
#  assistive_technology_id :integer
#  version                 :string
#  notes                   :text
#  created_at              :datetime
#  updated_at              :datetime
#
# Indexes
#
#  index_assistive_technology_versions_on_assistive_technology_id  (assistive_technology_id)
#

class AssistiveTechnologyVersion < ActiveRecord::Base
  belongs_to :assistive_technology, touch: true
  has_many :setups, dependent: :nullify

  validates_associated :assistive_technology
  validates_presence_of :assistive_technology, :version
  validates :version, uniqueness: {scope: :assistive_technology_id}

  default_scope { joins(:assistive_technology).order('LOWER(title), LOWER(version)') }

  def to_s
    [assistive_technology.to_s, version.to_s].join(" ")
  end

end
