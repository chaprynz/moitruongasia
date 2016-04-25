class AddTintucToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :tintuc, :boolean
  end
end
