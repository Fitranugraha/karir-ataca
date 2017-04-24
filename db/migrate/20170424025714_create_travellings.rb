class CreateTravellings < ActiveRecord::Migration[5.0]
  def change
    create_table :travellings do |t|
      t.string :country
      t.date :start_date
      t.date :end_date
      t.text :objective
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
