# == Schema Information
#
# Table name: verification_statuses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class VerificationStatus < ActiveRecord::Base

end
