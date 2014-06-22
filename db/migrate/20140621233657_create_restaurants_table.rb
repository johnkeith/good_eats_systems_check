class CreateRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :zipcode, null: false

      t.string :description
      t.string :catagory

      t.integer :review_id
      t.timestamps
    end
  end
end
