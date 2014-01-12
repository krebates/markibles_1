class ChangePhotocolumnName < ActiveRecord::Migration
  def up
    rename_column :products, :photo, :food_photo
  end

  def down
    rename_column :products, :food_photo, :photo
  end
end
