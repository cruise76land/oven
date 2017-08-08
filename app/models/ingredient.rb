class Ingredient < ApplicationRecord
	has_many :products, dependent: :destroy
end
