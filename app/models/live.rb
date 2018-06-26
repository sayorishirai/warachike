class Live < ApplicationRecord

	has_many :reserves
	has_many :performers

end
