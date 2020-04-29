class Word < ApplicationRecord
	has_one_attached :pronunciation
	has_one_attached :image

	has_many :sentences, dependent: :destroy

	# validates :english_word, uniqueness: true
	# validates :part_of_speech, uniqueness: true
	# validates :transliteration, uniqueness: true
	# validates :translation, uniqueness: true
	# validates :pronunciation, uniqueness: true
	# validates :image, uniqueness: true
end
