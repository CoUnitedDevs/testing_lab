class CreateBloodExaminationReports < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_examination_reports do |t|
      t.string :hemoglobin
      t.string :total_rbc_count
      t.string :total_wbc_count
      t.string :ae_count
      t.string :platelet_count
      t.string :neutrophils
      t.string :lymphocytes
      t.string :eosinophils
      t.string :monocytes
      t.string :basophils
      t.string :esr
      t.integer :patient_id
      t.timestamps
    end
  end
end
