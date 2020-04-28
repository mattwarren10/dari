class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :english_word
      t.string :part_of_speech
      t.string :transliteration
      t.string :translation
      t.string :pronunciation
      t.string :image

      t.timestamps
    end
  end
end
