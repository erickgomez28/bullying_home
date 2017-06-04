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

class Bullying < ApplicationRecord
  belongs_to :bully, class_name: 'User'
end
