require 'faker'

def seed_cour
	10.times do
		@cour = Cour.create!(titre: Faker::Food.dish, description: Faker::Food.description)		
	end
end

def seed_lecon
	40.times do
		@lecon = Lecon.create!(cour: @cour, titre: Faker::Restaurant.name, body: Faker::Restaurant.description)
	end
end

def seed_eleve
	30.times do
		@eleve = Eleve.create!(cour: @cour, first_name: Faker::Name.first_name, last_name: Faker::Name.name)
	end
end

def seed_all
	seed_cour
	seed_lecon
	seed_eleve
end

seed_all