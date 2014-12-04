# -*- encoding : utf-8 -*-
class LandingPicture < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  has_many :items
end
