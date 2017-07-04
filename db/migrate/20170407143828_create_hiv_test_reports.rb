class CreateHivTestReports < ActiveRecord::Migration[5.0]
  def change
    create_table :hiv_test_reports do |t|
      t.string :hiv_test1
      t.string :hiv_test2
      t.integer :patient_id
      t.timestamps
    end
  end
end
