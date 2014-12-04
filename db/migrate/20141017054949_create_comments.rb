# -*- encoding : utf-8 -*-
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, :comment => '评论的内容'
      t.string :ip, :comments => '评论者的ip'
      t.string :im_id, :comments => '评论者的im id'
      t.string :im_type, :comments => '评论者的im类型 '
      t.integer :item_id

      t.timestamps
    end
  end
end
