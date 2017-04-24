class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :speech
      t.string :writing
      t.string :reading
      t.text :note
      t.belongs_to :profile, foreign_key: true

      t.timestamps
    end
  end
end
