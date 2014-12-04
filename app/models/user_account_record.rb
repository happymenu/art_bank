# -*- encoding : utf-8 -*-
class UserAccountRecord < ActiveRecord::Base
  belongs_to :user
end
