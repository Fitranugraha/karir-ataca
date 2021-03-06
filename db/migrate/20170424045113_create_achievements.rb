class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :notes
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
