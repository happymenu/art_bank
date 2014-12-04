# -*- encoding : utf-8 -*-
class CreateUserAccountRecords < ActiveRecord::Migration
  def change
    create_table :user_account_records do |t|
      t.string :voucher_code, :comment => '消费码， 用户持这个码就可以去商家消费'
      t.string :cost, :comment => '用户花了多少钱'
      t.string :account, :comment => '银行账号（暂时代替)'
      t.string :result, :comment => '操作结果'
      t.text :raw_log, :comment => '原始记录'
      t.integer :user_id, :comment => '商家id', :default => 0

      t.timestamps
    end
  end
end
