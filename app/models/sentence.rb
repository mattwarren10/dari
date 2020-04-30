class Sentence < ApplicationRecord
	has_one_attached :pronunciation_sentence

  belongs_to :word

  # validates :english_sentence, presence: true, uniqueness: true
  # validates :transliteration_sentence, presence: true, uniqueness: true
  # validates :translation_sentence, presence: true, uniqueness: true
  # validates :pronunciation_sentence, presence: true, uniqueness: true
end
