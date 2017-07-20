class CreatePatientTesturls < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_testurls do |t|
      t.integer :patient_id
      t.string :test_url
      t.string :status, default: "inactive"
      t.timestamps
    end
  end
end
