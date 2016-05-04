class AddSlugToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :slug, :string
    add_index :tintucs, :slug, unique: true
  end
end
