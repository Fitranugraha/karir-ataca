class CreateScientificWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :scientific_works do |t|
      t.string :title
      t.text :notes
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
