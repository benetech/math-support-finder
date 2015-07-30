# == Schema Information
#
# Table name: platform_assistive_technologies
#
#  id                      :integer          not null, primary key
#  platform_id             :integer
#  assistive_technology_id :integer
#  created_at              :datetime
#  updated_at              :datetime
#
# Indexes
#
#  pat_assistive_technology_id  (assistive_technology_id)
#  pat_platform_id              (platform_id)
#

FactoryGirl.define do
  factory :platform_assistive_technology do
    platform nil
assistive_technology nil
  end

end
