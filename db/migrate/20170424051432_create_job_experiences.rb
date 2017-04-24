class CreateJobExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :job_experiences do |t|
      t.string :company_name
      t.string :company_address
      t.string :company_phone
      t.string :job_title
      t.date :start_date
      t.date :end_date
      t.text :job_description
      t.text :reason_of_resignation
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
