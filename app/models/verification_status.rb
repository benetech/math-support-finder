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
  has_many :capabilities, dependent: :nullify

  def to_s
    title
  end

  def css_class
    case id
    when 1
      "success"
    when 2
      "danger"
    end
  end

end
