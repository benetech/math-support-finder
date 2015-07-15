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

require 'test_helper'

class RendererTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
