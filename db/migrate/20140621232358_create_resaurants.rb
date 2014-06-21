class CreateResaurants < ActiveRecord::Migration
  def change
    create_table :resaurants do |t|

      t.timestamps
    end
  end
end
