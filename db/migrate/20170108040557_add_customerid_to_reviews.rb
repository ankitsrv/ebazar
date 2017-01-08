class AddCustomeridToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :customer_id, :string
  end
end
