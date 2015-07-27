# == Schema Infile_formation
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
  has_many :setups, dependent: :nullify

  validates_associated :renderer
  validates_presence_of :renderer, :version
  validates :version, numericality: true

  def to_s
    [renderer.to_s, version.to_s].join(" ")
  end
end
