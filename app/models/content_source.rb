# == Schema Information
#
# Table name: content_sources
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  notes      :text(65535)
#  created_at :datetime
#  updated_at :datetime
#

class ContentSource < ActiveRecord::Base

end
