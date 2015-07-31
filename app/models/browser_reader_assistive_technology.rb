# == Schema Information
#
# Table name: browser_reader_assistive_technologies
#
#  id                      :integer          not null, primary key
#  browser_reader_id       :integer
#  assistive_technology_id :integer
#  created_at              :datetime
#  updated_at              :datetime
#
# Indexes
#
#  brat_assistive_technology_id  (assistive_technology_id)
#  brat_browser_reader_id        (browser_reader_id)
#

class BrowserReaderAssistiveTechnology < ActiveRecord::Base
  belongs_to :browser_reader
  belongs_to :assistive_technology

  validates :assistive_technology_id, uniqueness: {scope: :browser_reader_id}
  validates_presence_of :assistive_technology, :browser_reader
  validates_associated :assistive_technology, :browser_reader

  def to_s
    [ browser_reader.to_s, assistive_technology.to_s,].join(" - ")
  end

end
