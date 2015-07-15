# == Schema Information
#
# Table name: renderers
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  notes      :text(65535)
#  created_at :datetime
#  updated_at :datetime
#

class Renderer < ActiveRecord::Base

end
