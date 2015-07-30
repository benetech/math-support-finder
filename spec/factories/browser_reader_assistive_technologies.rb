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

FactoryGirl.define do
  factory :browser_reader_assistive_technology do
    browser_reader nil
assistive_technology nil
  end

end
