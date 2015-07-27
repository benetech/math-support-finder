# == Schema Infile_formation
#
# Table name: platform_versions
#
#  id          :integer          not null, primary key
#  platform_id :integer
#  version     :float
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_platform_versions_on_platform_id  (platform_id)
#

class PlatformVersion < ActiveRecord::Base
  belongs_to :platform
  has_many :setups, dependent: :nullify

  validates_associated :platform
  validates_presence_of :platform, :version
  validates :version, numericality: true

  def to_s
    [platform.to_s, version.to_s].join(" ")
  end

end
