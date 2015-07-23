# == Schema Information
#
# Table name: content_sources
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class ContentSource < ActiveRecord::Base

end
