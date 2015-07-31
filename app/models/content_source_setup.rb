# == Schema Infile_formation
#
# Table name: content_source_setups
#
#  id                :integer          not null, primary key
#  setup_id          :integer
#  content_source_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_content_source_setups_on_content_source_id  (content_source_id)
#  index_content_source_setups_on_setup_id           (setup_id)
#

class ContentSourceSetup < ActiveRecord::Base

  belongs_to :setup
  belongs_to :content_source

  validates_presence_of :setup, :content_source
  validates_associated :setup, :content_source
  validates :setup_id, uniqueness: {scope: :content_source_id}

  def to_s
    [setup.to_s, content_source.to_s].join(" - ")
  end
end
