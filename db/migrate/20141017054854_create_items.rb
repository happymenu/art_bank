# -*- encoding : utf-8 -*-
class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :logo, :default => '', :comment => 'LOGO'
      t.string :title, :default => '', :comment => '标题'
      t.text :introduction, :comment => '作品介绍'

      t.timestamps
    end
  end
end
