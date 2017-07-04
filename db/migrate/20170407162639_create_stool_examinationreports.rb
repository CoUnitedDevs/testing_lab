class CreateStoolExaminationreports < ActiveRecord::Migration[5.0]
  def change
    create_table :stool_examinationreports do |t|
      t.string :color
      t.string :reaction
      t.string :viscosity
      t.string :mucous
      t.string :blood
      t.string :occult_blood
      t.string :ova
      t.string :cyst
      t.integer :patient_id
      t.timestamps
    end
  end
end
