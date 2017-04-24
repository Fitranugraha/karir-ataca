class CreateScientifcWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :scientifc_works do |t|
      t.string :title
      t.text :notes
      t.references :profile

      t.timestamps
    end
  end
end
