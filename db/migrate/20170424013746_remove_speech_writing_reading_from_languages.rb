class RemoveSpeechWritingReadingFromLanguages < ActiveRecord::Migration[5.0]
  def change
    remove_column :languages, :speech, :string
    remove_column :languages, :writing, :string
    remove_column :languages, :reading, :string
  end
end
