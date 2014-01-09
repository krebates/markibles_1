class UpdateItemCriteria < ActiveRecord::Migration
  def up
    change_column :products, :category_id, :integer, null: false
  end

  def down
    change_column :products, :category_id, :integer
  end
end
