class RemovePatientTesFromPatient < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :patient_test, :string
  end
end
