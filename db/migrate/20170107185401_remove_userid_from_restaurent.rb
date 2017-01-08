class RemoveUseridFromRestaurent < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurents, :user_id, :string
  end
end
