class Performer < ApplicationRecord

	has_many :performers_genres
	# has_many :genres
	has_many :genres, through: :performers_genres
	belongs_to :live
	belongs_to :like
	belongs_to :support
	belongs_to :sale
end
