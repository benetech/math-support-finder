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

require 'test_helper'

class PlatformBrowserReaderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
