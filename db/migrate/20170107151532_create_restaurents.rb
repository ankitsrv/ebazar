class CreateRestaurents < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurents do |t|
      t.string :name
      t.string :phone
      t.text   :address

      t.timestamps
    end
  end
end
