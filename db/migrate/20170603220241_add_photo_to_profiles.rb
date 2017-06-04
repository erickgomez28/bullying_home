class AddPhotoToProfiles < ActiveRecord::Migration[5.1]
 	def up
    add_attachment :profiles, :photo
  end

  def down
    remove_attachment :profiles, :photo
  end
end
