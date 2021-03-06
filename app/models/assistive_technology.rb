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
  has_many :setups, through: :assistive_technology_versions

  has_many :platform_assistive_technologies, dependent: :destroy
  has_many :platforms, through: :platform_assistive_technologies, :after_remove => proc { |a| a.touch }

  has_many :browser_reader_assistive_technologies, dependent: :destroy
  has_many :browser_readers, through: :browser_reader_assistive_technologies, :after_remove => proc { |a| a.touch }

  validates_presence_of :title

  default_scope { order('LOWER(title)') }

  def to_s
    title
  end

  def versions
    assistive_technology_versions
  end

  def version_ids
    versions.collect{|v| v.id}
  end
end
