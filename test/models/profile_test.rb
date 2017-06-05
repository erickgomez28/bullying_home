# == Schema Information
#
# Table name: profiles
#
#  id                 :integer          not null, primary key
#  name               :string
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
