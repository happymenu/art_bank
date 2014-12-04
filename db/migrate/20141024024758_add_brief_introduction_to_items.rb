# -*- encoding : utf-8 -*-
class AddBriefIntroductionToItems < ActiveRecord::Migration
  def change
    add_column :items, :brief_introduction, :text
  end
end
