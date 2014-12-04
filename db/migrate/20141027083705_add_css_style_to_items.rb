class AddCssStyleToItems < ActiveRecord::Migration
  def change
    add_column :items, :css_style, :text
  end
end
