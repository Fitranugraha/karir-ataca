class CreateMarriedStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :married_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
