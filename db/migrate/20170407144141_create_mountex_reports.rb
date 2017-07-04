class CreateMountexReports < ActiveRecord::Migration[5.0]
  def change
    create_table :mountex_reports do |t|
      t.string :mountext_test
      t.integer :patient_id
      t.timestamps
    end
  end
end
