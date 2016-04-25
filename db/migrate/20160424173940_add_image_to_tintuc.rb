class AddImageToTintuc < ActiveRecord::Migration
  def self.up
    change_table :tintucs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tintucs, :image
  end

end
