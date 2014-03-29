class AddPhotoToSpaces < ActiveRecord::Migration
  def change
  	add_attachment :spaces, :main_photo
  end
end
