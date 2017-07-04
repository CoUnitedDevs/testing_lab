class CreateUrineExaminationReports < ActiveRecord::Migration[5.0]
  def change
    create_table :urine_examination_reports do |t|
      t.string :colour
      t.string :appearance
      t.string :reaction
      t.string :specific_gravity
      t.string :phosphate
      t.string :albumin
      t.string :sugar
      t.string :ketone_bodies
      t.string :bile_salts
      t.string :bile_pigments
      t.string :urobilinogen
      t.string :bence_jones_proteins
      t.string :epithelial_cells
      t.string :pus_cells
      t.string :rbcs
      t.string :casts
      t.string :crystals
      t.string :mucus_threads
      t.integer :patient_id
      t.timestamps
    end
  end
end
