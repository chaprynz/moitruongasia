class AddSlugToKhachhang < ActiveRecord::Migration
  def change
    add_column :khachhangs, :slug, :string
    add_index :khachhangs, :slug, unique: true
  end
end
