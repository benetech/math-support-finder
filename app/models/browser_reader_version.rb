# == Schema Information
#
# Table name: browser_reader_versions
#
#  id                :integer          not null, primary key
#  browser_reader_id :integer
#  version           :float
#  notes             :text
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_browser_reader_versions_on_browser_reader_id  (browser_reader_id)
#

class BrowserReaderVersion < ActiveRecord::Base

  belongs_to :browser_reader
end
