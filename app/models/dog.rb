class Dog < ApplicationRecord
	has_many :join_talbe_dog_strolls
	has_many :strolls, through: :join_talbe_dog_strolls
	belongs_to :city
end
