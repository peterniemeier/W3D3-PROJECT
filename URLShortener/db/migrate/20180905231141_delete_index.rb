class DeleteIndex < ActiveRecord::Migration[5.1]
  def change
    
    remove_index :short_urls, name: "index_short_urls_on_user_id_and_short_url_and_long_url"
  end
end
