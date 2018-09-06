class ChangeShortUrl < ActiveRecord::Migration[5.1]
  def change
    
    add_index :short_urls, [:user_id,:short_url], unique: true
    # add_index :short_urls
    
  end
end