class AddImageToKhachhang < ActiveRecord::Migration
  def self.up
    change_table :khachhangs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :khachhangs, :image
  end
end
