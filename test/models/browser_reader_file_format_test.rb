# == Schema Information
#
# Table name: browser_reader_file_formats
#
#  id                :integer          not null, primary key
#  browser_reader_id :integer
#  file_format_id    :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_browser_reader_file_formats_on_browser_reader_id  (browser_reader_id)
#  index_browser_reader_file_formats_on_file_format_id     (file_format_id)
#

# == Schema Infile_formation
#
# Table name: browser_reader_file_formats
#
#  id                :integer          not null, primary key
#  browser_reader_id :integer
#  file_format_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_browser_reader_file_formats_on_browser_reader_id  (browser_reader_id)
#  index_browser_reader_file_formats_on_file_format_id          (file_format_id)
#

require 'test_helper'

class BrowserReaderFileFileFormatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
