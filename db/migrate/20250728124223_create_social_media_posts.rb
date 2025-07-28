class CreateSocialMediaPosts < ActiveRecord::Migration[7.2]
  def change
    create_table :social_media_posts do |t|
      t.string :title
      t.text :post
      t.datetime :schedule_date

      t.timestamps
    end
  end
end
