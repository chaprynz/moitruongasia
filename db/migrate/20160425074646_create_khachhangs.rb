class CreateKhachhangs < ActiveRecord::Migration
  def change
    create_table :khachhangs do |t|
      t.string :name
      t.string :address
      t.text :content

      t.timestamps null: false
    end
  end
end
