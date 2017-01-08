class AddRestaurentidToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :restaurent_id, :string
  end
end
