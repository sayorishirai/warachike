class Like < ApplicationRecord

	has_many :performers
	belongs_to :user

end
