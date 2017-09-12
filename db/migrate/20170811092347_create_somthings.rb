class CreateSomthings < ActiveRecord::Migration[5.0]
  def change
    create_table :somthings do |t|
      t.string :so
      t.integer :arun

      t.timestamps
    end
  end
end
