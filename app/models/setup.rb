# == Schema Information
#
# Table name: setups
#
#  id                              :integer          not null, primary key
#  platform_version_id             :integer
#  browser_reader_version_id       :integer
#  assistive_technology_version_id :integer
#  file_format_id                  :integer
#  workflow_status_id              :integer
#  notes                           :text
#  created_at                      :datetime
#  updated_at                      :datetime
#  renderer_id                     :integer
#
# Indexes
#
#  index_setups_on_assistive_technology_version_id  (assistive_technology_version_id)
#  index_setups_on_browser_reader_version_id        (browser_reader_version_id)
#  index_setups_on_file_format_id                   (file_format_id)
#  index_setups_on_platform_version_id              (platform_version_id)
#  index_setups_on_renderer_id                      (renderer_id)
#  index_setups_on_workflow_status_id               (workflow_status_id)
#

class Setup < ActiveRecord::Base

  belongs_to :platform_version, touch: true
  delegate  :platform, to: :platform_version, allow_nil: true

  belongs_to :browser_reader_version, touch: true
  delegate  :browser_reader, to: :browser_reader_version, allow_nil: true

  belongs_to :assistive_technology_version, touch: true
  delegate  :assistive_technology, to: :assistive_technology_version, allow_nil: true

  belongs_to :renderer
  belongs_to :file_format
  belongs_to :workflow_status

  has_many :content_source_setups, dependent: :destroy
  has_many :content_sources, through: :content_source_setups

  has_many :capabilities, dependent: :destroy
  has_many :affordances, through: :capabilities
  has_many :outputs, through: :affordances

  validates_presence_of :platform_version, :renderer, :browser_reader_version, :assistive_technology_version, :file_format, :workflow_status
  validates_associated :platform_version, :renderer, :browser_reader_version, :assistive_technology_version, :file_format, :workflow_status

  paginates_per 50

  scope :sorted, -> { joins(:platform_version, :assistive_technology_version, :browser_reader_version).order('platform_version.title asc, assistive_technology_version.title asc, browser_reader_version.title asc') }
  default_scope  {order('workflow_status_id asc, updated_at desc')}

  def other_affordances
    a_ids = capabilities.map(&:affordance_id)
    Affordance.where.not(id: a_ids)
  end

  def to_s
    "Setup " + id.to_s
  end
end
