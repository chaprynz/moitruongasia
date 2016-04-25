class AddGiaToPost < ActiveRecord::Migration
  def change
    add_column :posts, :gia, :string
  end
end
