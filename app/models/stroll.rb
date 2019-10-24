class Stroll < ApplicationRecord
	has_many :join_talbe_dog_strolls
	has_many :dogs, through: :join_talbe_dog_strolls
	belongs_to :dogsitter
end
