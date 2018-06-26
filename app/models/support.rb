class Support < ApplicationRecord

	has_many :performers
	belongs_to :user

end
