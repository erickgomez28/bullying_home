# == Schema Information
#
# Table name: bullyings
#
#  id         :integer          not null, primary key
#  message    :text
#  profile_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bullyings_on_profile_id  (profile_id)
#

class Bullying < ApplicationRecord
  # belongs_to :bully, class_name: 'Profile'
  belongs_to :profile
end
