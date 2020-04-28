class Word < ApplicationRecord
	has_one_attached :pronunciation
	has_one_attached :image
end
