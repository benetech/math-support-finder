# == Schema Information
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
end
