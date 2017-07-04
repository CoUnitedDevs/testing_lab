class CreateWidalReactionReports < ActiveRecord::Migration[5.0]
  def change
    create_table :widal_reaction_reports do |t|
      t.string :salmonella_typhi_o
      t.string :salmonella_typhi_h
      t.string :salmonella_para_typhi_ah
      t.string :salmonella_para_typhi_bh
      t.string :smear_for_mp
      t.integer :patient_id
      t.timestamps
    end
  end
end
