class RemoveReviewIdColumnRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :review_id
  end

  def down
    add_column :restaurants, :review_id, :integer
  end
end
