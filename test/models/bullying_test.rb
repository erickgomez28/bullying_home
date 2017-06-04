# == Schema Information
#
# Table name: bullyings
#
#  id         :integer          not null, primary key
#  message    :text
#  bully_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BullyingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
