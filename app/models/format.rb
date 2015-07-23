# == Schema Information
#
# Table name: formats
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :string
#  text       :string
#  created_at :datetime
#  updated_at :datetime
#

class Format < ActiveRecord::Base

end
