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

class BrowserReaderFileFormat < ActiveRecord::Base

  belongs_to :browser_reader
  belongs_to :file_format

  validates :browser_reader_id, uniqueness: {scope: :file_format_id}
  validates_presence_of :browser_reader, :file_format
  validates_associated :browser_reader, :file_format

  def to_s
    [browser_reader.to_s, file_format.to_s].join(' - ')
  end
end
