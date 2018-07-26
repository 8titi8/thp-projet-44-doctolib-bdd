# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do  # creation de 10 médecins
	doctor = Doctor.create(first_name: Faker::Name.first_name,
							last_name: Faker::Name.last_name,
							specialty: Faker::Superhero.power,
							postal_code: Faker::Address.zip_code)
end

30.times do # créations de 30 patients
	patient = Patient.create(first_name: Faker::Name.first_name,
							last_name: Faker::Name.last_name)
end

40.times do # création de 40 RDV
	appointment = Appointment.create(date: Faker::Time.forward(365, :day),
									# date max dans 1 an et heure durant la journée
									patient_id: rand((Patient.first.id)..(Patient.last.id)),
									# prendre de facon aleatoire id patient entre 1er et dernier
									doctor_id: rand((Doctor.first.id)..(Doctor.last.id)))
									# prendre de facon aleatoire id médecin entre 1er et dernier
end