# == Schema Information
#
# Table name: platforms
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Platform < ActiveRecord::Base
  has_many :platform_versions, dependent: :destroy

  has_many :platform_browser_readers, dependent: :destroy
  has_many :browser_readers, through: :platform_browser_readers

  has_many :platform_assistive_technologies, dependent: :destroy
  has_many :assistive_technologies, through: :platform_assistive_technologies 

  has_many :setups, through: :platform_versions

  validates_presence_of :title
  default_scope { order('LOWER(title)') }

  def to_s
    title
  end

  def versions
    platform_versions
  end

  def version_ids
    versions.collect{|v| v.id}
  end
end
