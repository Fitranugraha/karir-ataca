class CreateFormalEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :formal_educations do |t|
      t.string :name
      t.integer :level
      t.date :start_date
      t.date :end_date
      t.string :certificate
      t.string :faculty
      t.string :department
      t.text :notes
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
