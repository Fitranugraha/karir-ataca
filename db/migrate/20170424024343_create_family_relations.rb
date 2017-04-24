class CreateFamilyRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :family_relations do |t|
      t.string :name

      t.timestamps
    end
  end
end
