class AddUserRefToHospitals < ActiveRecord::Migration[5.2]
  def change
    add_reference :hospitals, :user, foreign_key: true
  end
end
