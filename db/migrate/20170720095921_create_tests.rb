class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.integer :patient_id
      t.references :testable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
