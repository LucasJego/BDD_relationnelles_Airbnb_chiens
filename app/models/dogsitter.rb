class Dogsitter < ApplicationRecord
	has_many :dogs
	belongs_to :city
	has_many :strolls
end
