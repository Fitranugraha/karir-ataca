class AddSpeechWritingReadingFromLanguages < ActiveRecord::Migration[5.0]
  def change
    add_column :languages, :speech, :integer
    add_column :languages, :writing, :integer
    add_column :languages, :reading, :integer
  end
end
