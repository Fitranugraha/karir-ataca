class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.string :name
      t.integer :relation
      t.string :phone
      t.text :address
      t.date :birth_date
      t.integer :education
      t.string :job
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
