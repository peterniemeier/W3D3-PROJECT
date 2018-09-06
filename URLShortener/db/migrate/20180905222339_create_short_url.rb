class CreateShortUrl < ActiveRecord::Migration[5.1]
  def change
    create_table :short_urls do |t|
      t.integer :user_id, null: false
      t.string  :short_url, null: false
      t.string :long_url, null: false
      
      t.timestamps
    end
    add_index :short_urls, [:user_id,:short_url,:long_url], unique: true
    # add_index :short_urls
    
  end
end
