json.extract! word, :id, :english_word, :part_of_speech, :transliteration, :translation, :pronunciation, :image, :created_at, :updated_at
json.url word_url(word, format: :json)
