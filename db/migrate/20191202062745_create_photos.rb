class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|

      t.timestamps
      t.text :caption
      t.integer :place_id
    end
  end
end

class Photo < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
