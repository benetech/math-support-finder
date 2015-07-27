# == Schema Infile_formation
#
# Table name: browser_reader_renderers
#
#  id                :integer          not null, primary key
#  browser_reader_id :integer
#  renderer_id       :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_browser_reader_renderers_on_browser_reader_id  (browser_reader_id)
#  index_browser_reader_renderers_on_renderer_id        (renderer_id)
#

class BrowserReaderRenderer < ActiveRecord::Base

  belongs_to :browser_reader
  belongs_to :renderer

  def to_s
    [browser_reader.to_s, renderer.to_s].join(" - ")
  end
end
