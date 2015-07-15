# == Schema Information
#
# Table name: formats
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  notes      :string(255)
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Format < ActiveRecord::Base

end
