class Cour < ApplicationRecord
	has_many :lecons
	has_many :eleves
end
