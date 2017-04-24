class CreateLanguageLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :language_levels do |t|
      t.string :level

      t.timestamps
    end
  end
end
