class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :reply_id
      t.string :photo_url
      t.string :photo_caption

      t.timestamps
    end
  end
end
