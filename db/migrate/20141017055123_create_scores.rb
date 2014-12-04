# -*- encoding : utf-8 -*-
class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :item_id, :default => 0, :comment => '作品id'
      t.string :ip, :default => '', :comment => '提交者的ip地址'
      t.string :im_id, :default => '', :comment => '提交者的微信/微博id'
      t.string :im_type, :default => '', :comment => '提交者用的是微信还是微博'

      t.timestamps
    end
  end
end
