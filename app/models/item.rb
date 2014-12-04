# -*- encoding : utf-8 -*-
class Item < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  has_many :comments
  has_many :scores
  belongs_to :landing_picture
  def not_thumbed_up_by_current_ip remote_ip, item_id
    Score.where( 'ip = ? and item_id = ?', remote_ip, item_id).count == 0
  end
end
