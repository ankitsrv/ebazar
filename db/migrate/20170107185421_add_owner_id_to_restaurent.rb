class AddOwnerIdToRestaurent < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurents, :owner_id, :string
  end
end
