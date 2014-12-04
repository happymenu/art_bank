# -*- encoding : utf-8 -*-
class CreateLandingPictures < ActiveRecord::Migration
  def change
    create_table :landing_pictures do |t|
      t.string :name
      t.string :logo
      t.string :landing_picture_type

      t.timestamps
    end
  end
end
