class RemoveTextFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :text, :string
  end
end
