# == Schema Information
#
# Table name: platforms
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  notes      :text(65535)
#  created_at :datetime
#  updated_at :datetime
#

class Platform < ActiveRecord::Base

end
