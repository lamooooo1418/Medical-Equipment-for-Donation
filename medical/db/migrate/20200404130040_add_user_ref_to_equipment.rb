class AddUserRefToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_reference :equipment, :user, foreign_key: true
  end
end
