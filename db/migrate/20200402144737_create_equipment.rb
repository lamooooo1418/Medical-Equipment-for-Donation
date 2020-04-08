class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :description
      t.string :time_of_use
      t.numeric :phone

      t.timestamps
    end
  end
end
