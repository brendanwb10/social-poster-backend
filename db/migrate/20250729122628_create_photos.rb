class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.references :social_media_post, null: false, foreign_key: true
      t.string :url
      t.string :caption

      t.timestamps
    end
  end
end
