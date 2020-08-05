# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Cohort.destroy_all

aprtwenty = [
    "Aidan Muller-Cohn","Thea Harvey-Brown","Andy Del Valle","Colton Kaiser","David Knudson","Don Mallory","Gabe de Sousa","Jeff Simon","Jenni Paquette","John Rusch","Joshua Mclean","Justin Langlinais","Dream/Khanittha Krajangjaem","Klarissa Smith","Maggie Cooper","Mathew Wheatley","Matthew Sedlacek","Sean Dever","Steven Parsons"
]

fake = ["Ren", "Wiley", "Noobers", "Goobers", "Figeuro", "Small Time Sorry", "Yesterday"]

oh_four_twenty_twenty = Cohort.create!(name: "Breakout Room 8", start_date: Date.new(2020, 04, 20))

aprtwenty.each do |student| 
    Student.create!(name: student, have_gone: false, cohort_id: oh_four_twenty_twenty.id)
end
oh_one_twenty_twenty = Cohort.create!(name: "The Sprigfield Sandestine", start_date: Date.new(2020, 01, 01))

fake.each do |student| 
    Student.create!(name: student, have_gone: false, cohort_id: oh_one_twenty_twenty.id)
end