class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.date :present_date
      t.string :mobile_no
      t.string :referred_by
      t.string :patient_test
      t.timestamps
    end
  end
end
