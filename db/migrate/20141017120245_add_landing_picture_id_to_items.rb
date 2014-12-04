# -*- encoding : utf-8 -*-
class AddLandingPictureIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :landing_picture_id, :integer, :comment => '分类的id'
  end
end
