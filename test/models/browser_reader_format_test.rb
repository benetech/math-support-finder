# == Schema Information
#
# Table name: browser_reader_formats
#
#  id                :integer          not null, primary key
#  browser_reader_id :integer
#  format_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_browser_reader_formats_on_browser_reader_id  (browser_reader_id)
#  index_browser_reader_formats_on_format_id          (format_id)
#

require 'test_helper'

class BrowserReaderFormatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
