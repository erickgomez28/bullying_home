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

class Profile < ApplicationRecord
  belongs_to :user
  has_one :bullying, dependent: :destroy #, foreign_key: 'bully_id'
  accepts_nested_attributes_for :bullying, reject_if: :all_blank  

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" } #, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
