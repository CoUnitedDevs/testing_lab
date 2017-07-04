class CreateGravindexTestReports < ActiveRecord::Migration[5.0]
  def change
    create_table :gravindex_test_reports do |t|
      t.string :gravindex_test_report
      t.integer :patient_id
      t.timestamps
    end
  end
end
