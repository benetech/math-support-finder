# == Schema Information
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

require 'test_helper'

class BrowserReaderRendererTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
