class AddAtributesToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tongquan, :text
    add_column :posts, :tieuchuan, :text
    add_column :posts, :thongtinsanpham, :text
    add_column :posts, :thongsokythuat, :text
    add_column :posts, :gia, :string
  end
end
