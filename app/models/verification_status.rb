# == Schema Information
#
# Table name: verification_statuses
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#

class VerificationStatus < ActiveRecord::Base
  has_many :configurations, dependent: :nullify
  def to_s
    title
  end

end
