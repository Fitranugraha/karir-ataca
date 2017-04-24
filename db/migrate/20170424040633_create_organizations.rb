class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :field
      t.string :location
      t.integer :year
      t.string :position
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
