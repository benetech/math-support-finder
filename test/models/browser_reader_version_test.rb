# == Schema Information
#
# Table name: browser_reader_versions
#
#  id                :integer          not null, primary key
#  browser_reader_id :integer
#  version           :float(24)
#  notes             :text(65535)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_browser_reader_versions_on_browser_reader_id  (browser_reader_id)
#

require 'test_helper'

class BrowserReaderVersionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
