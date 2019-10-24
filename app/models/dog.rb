class Dog < ApplicationRecord
	has_many :strolls, through: :join_talbe_dog_stroll
	has_many :join_talbe_dog_stroll
	belongs_to :city
	has_many :dogsitters
end
