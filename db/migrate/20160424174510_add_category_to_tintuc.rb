class AddCategoryToTintuc < ActiveRecord::Migration
  def change
    add_reference :tintucs, :category, index: true, foreign_key: true
  end
end
