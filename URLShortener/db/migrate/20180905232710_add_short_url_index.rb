class AddShortUrlIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :short_urls, :short_url
  end
end
