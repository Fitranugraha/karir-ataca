class CreateTrainings < ActiveRecord::Migration[5.0]
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :organizer
      t.string :location
      t.date :year
      t.string :certificate
      t.text :notes
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
