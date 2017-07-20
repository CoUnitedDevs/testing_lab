class AddPatienIndexToPatient < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :patient_index, :integer
  end
end
