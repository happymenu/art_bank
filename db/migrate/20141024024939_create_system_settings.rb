# -*- encoding : utf-8 -*-
class CreateSystemSettings < ActiveRecord::Migration
  def change
    create_table :system_settings do |t|
      t.string :site_name, :default => '大咖招门徒'
      t.integer :page_cache_time, :default => 60

      t.timestamps
    end
    SystemSetting.create
  end
end
