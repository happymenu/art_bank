# -*- encoding : utf-8 -*-
class AddCompanyInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string
    add_column :users, :address, :text
    add_column :users, :primary_contact_name, :string
    add_column :users, :primary_contact_email, :string
    add_column :users, :primary_contact_telephone, :string
    add_column :users, :bank_name, :string
    add_column :users, :bank_account_owner_name, :string
    add_column :users, :bank_account, :string
  end
end
