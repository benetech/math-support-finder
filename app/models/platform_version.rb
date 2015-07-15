# == Schema Information
#
# Table name: platform_versions
#
#  id          :integer          not null, primary key
#  platform_id :integer
#  version     :float(24)
#  notes       :text(65535)
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_platform_versions_on_platform_id  (platform_id)
#

class PlatformVersion < ActiveRecord::Base

  belongs_to :platform
end
