# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Feature < ActiveRecord::Base

end
