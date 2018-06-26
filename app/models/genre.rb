class Genre < ApplicationRecord

	has_many :performers_genres
	# has_many :performers
	has_many :performers, through: :performers_genres
end
