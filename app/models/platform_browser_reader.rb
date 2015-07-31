# == Schema Infile_formation
#
# Table name: platform_browser_readers
#
#  id                :integer          not null, primary key
#  platform_id       :integer
#  browser_reader_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_platform_browser_readers_on_browser_reader_id  (browser_reader_id)
#  index_platform_browser_readers_on_platform_id        (platform_id)
#

class PlatformBrowserReader < ActiveRecord::Base

  belongs_to :platform
  belongs_to :browser_reader

  validates :platform_id, uniqueness: {scope: :browser_reader_id}
  validates_presence_of :browser_reader, :platform
  validates_associated :browser_reader, :platform

  def to_s
    [platform.to_s, browser_reader.to_s].join(" - ")
  end
end
