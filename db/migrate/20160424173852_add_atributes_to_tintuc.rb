class AddAtributesToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :title, :string
    add_column :tintucs, :content, :text
    add_column :tintucs, :tomtat, :text
  end
end
