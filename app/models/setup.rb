# == Schema Information
#
# Table name: setups
#
#  id                              :integer          not null, primary key
#  platform_version_id             :integer
#  renderer_version_id             :integer
#  browser_reader_version_id       :integer
#  assistive_technology_version_id :integer
#  file_format_id                  :integer
#  workflow_status_id              :integer
#  notes                           :text
#  created_at                      :datetime
#  updated_at                      :datetime
#
# Indexes
#
#  index_setups_on_assistive_technology_version_id  (assistive_technology_version_id)
#  index_setups_on_browser_reader_version_id        (browser_reader_version_id)
#  index_setups_on_file_format_id                   (file_format_id)
#  index_setups_on_platform_version_id              (platform_version_id)
#  index_setups_on_renderer_version_id              (renderer_version_id)
#  index_setups_on_workflow_status_id               (workflow_status_id)
#

class Setup < ActiveRecord::Base

  belongs_to :platform_version
  delegate  :platform, to: :platform_version, allow_nil: true

  belongs_to :renderer_version
  delegate  :renderer, to: :renderer_version, allow_nil: true

  belongs_to :browser_reader_version
  delegate  :browser_reader, to: :browser_reader_version, allow_nil: true

  belongs_to :assistive_technology_version
  delegate  :assistive_technology, to: :assistive_technology_version, allow_nil: true

  belongs_to :file_format
  belongs_to :workflow_status

  has_many :content_source_setups, dependent: :destroy
  has_many :content_sources, through: :content_source_setups

  has_many :capabilities, dependent: :destroy
  has_many :affordances, through: :capabilities
  has_many :outputs, through: :affordances

  validates_presence_of :platform_version, :renderer_version, :browser_reader_version, :assistive_technology_version, :file_format, :workflow_status
  validates_associated :platform_version, :renderer_version, :browser_reader_version, :assistive_technology_version, :file_format, :workflow_status

  def to_s
    "Setup " + id.to_s
  end
end
