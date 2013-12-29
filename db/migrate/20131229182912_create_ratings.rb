class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id, null:false
      t.integer :overall_rating, null:false
      t.integer :flavor, null:false
      t.integer :presentation, null:false
      t.integer :timeliness_of_delivery, null:false
      t.integer :product_id
      t.integer :seller_id
      t.timestamps
    end
  end
end
