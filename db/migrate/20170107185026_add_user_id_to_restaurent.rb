class AddUserIdToRestaurent < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurents, :user_id, :string
    add_column :restaurents, :integer, :string
  end
end
