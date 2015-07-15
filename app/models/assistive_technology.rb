# == Schema Information
#
# Table name: assistive_technologies
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  notes      :text(65535)
#  created_at :datetime
#  updated_at :datetime
#

class AssistiveTechnology < ActiveRecord::Base

end
