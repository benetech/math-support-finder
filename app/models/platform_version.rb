# == Schema Information
#
# Table name: platform_versions
#
#  id          :integer          not null, primary key
#  platform_id :integer
#  version     :string
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_platform_versions_on_platform_id  (platform_id)
#

class PlatformVersion < ActiveRecord::Base
  belongs_to :platform, touch: true
  has_many :setups, dependent: :nullify

  validates_associated :platform
  validates_presence_of :platform, :version
  validates :version, uniqueness: {scope: :platform_id}

  default_scope { joins(:platform).order('LOWER(title), LOWER(version)') }

  def to_s
    [platform.to_s, version.to_s].join(" ")
  end

end
