class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :hospital_name
      t.string :equipment_name
      t.string :quantitity
      t.string :phone

      t.timestamps
    end
  end
end
