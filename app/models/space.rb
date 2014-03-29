class Space < ActiveRecord::Base
  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :main_photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :main_photo, :content_type => /\Aimage\/.*\Z/
end