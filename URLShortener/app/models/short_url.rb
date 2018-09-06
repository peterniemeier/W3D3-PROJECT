# == Schema Information
#
# Table name: short_urls
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  short_url  :string           not null
#  long_url   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'securerandom'

class ShortUrl < ApplicationRecord
  
  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
  
    
  def self.random_code
    randomch = SecureRandom.urlsafe_base64
    if ShortUrl.where(short_url:randomch).exists?
      self.random_code
    end
    randomch
  end
  
  def self.create_short_url(user_id,long_url)
    ShortUrl.create!(user_id: user_id,short_url: ShortUrl.random_code,long_url: long_url)
  end
  
end
