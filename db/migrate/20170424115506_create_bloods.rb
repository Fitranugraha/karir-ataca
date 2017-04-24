class CreateBloods < ActiveRecord::Migration[5.0]
  def change
    create_table :bloods do |t|
      t.string :name

      t.timestamps
    end
  end
end
