class AddRatableToRating < ActiveRecord::Migration
  def up
    add_column :ratings, :ratable_id, :integer
    add_column :ratings, :ratable_type, :string
  end

  def down
    remove_column :ratings, :ratable_id
    remove_column :ratings, :ratable_type
  end
end
