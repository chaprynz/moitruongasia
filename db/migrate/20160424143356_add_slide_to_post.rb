class AddSlideToPost < ActiveRecord::Migration
  def change
    add_column :posts, :slide, :boolean
  end
end
