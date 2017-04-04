class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :user_id
      t.string :id_no
      t.string :nationality
      t.string :tribe
      t.string :birth_place
      t.date :birth_date
      t.integer :age
      t.float :height
      t.float :weight
      t.string :blood
      t.integer :sex
      t.integer :married
      t.string :religion
      t.text :id_address
      t.text :current_address
      t.string :email
      t.string :phone
      t.string :mobile_phone

      t.timestamps
    end
  end
end
