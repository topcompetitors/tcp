class CreateFacebookFeeds < ActiveRecord::Migration
  def change
    create_table :facebook_feeds do |t|
      t.integer :company_id
      t.integer :matrix_id
      t.string :title
      t.text :content
      t.string :url
      t.boolean :is_top

      t.timestamps
    end
  end
end