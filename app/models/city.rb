class City < ApplicationRecord
	# Une ville a plusieurs dogs et dogsitters
	has_many :dogs
	has_many :dogsitters
end
