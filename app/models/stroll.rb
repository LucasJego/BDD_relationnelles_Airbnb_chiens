class Stroll < ApplicationRecord
	has_many :join_talbe_dog_stroll
	has_many :dogs, through: :join_talbe_dog_stroll
	belongs_to :dogsitter
end
