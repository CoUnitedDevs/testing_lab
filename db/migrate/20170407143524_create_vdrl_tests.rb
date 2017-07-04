class CreateVdrlTests < ActiveRecord::Migration[5.0]
  def change
    create_table :vdrl_tests do |t|
      t.string :vdrl_test
      t.integer :patient_id
      t.timestamps
    end
  end
end
