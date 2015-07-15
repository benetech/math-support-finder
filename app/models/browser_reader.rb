# == Schema Information
#
# Table name: browser_readers
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  notes      :text(65535)
#  created_at :datetime
#  updated_at :datetime
#

class BrowserReader < ActiveRecord::Base

end
