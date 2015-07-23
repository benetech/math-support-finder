# == Schema Information
#
# Table name: renderer_versions
#
#  id          :integer          not null, primary key
#  renderer_id :integer
#  version     :float
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_renderer_versions_on_renderer_id  (renderer_id)
#

class RendererVersion < ActiveRecord::Base

  belongs_to :renderer
end
