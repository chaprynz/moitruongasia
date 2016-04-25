class CreateTintucs < ActiveRecord::Migration
  def change
    create_table :tintucs do |t|

      t.timestamps null: false
    end
  end
end
