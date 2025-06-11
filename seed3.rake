require 'faker'
namespace :seed3 do 
	task :populate3 => :environment do 

		I18n.locale = :en
		Faker::Config.locale = :en
20.times do 
	Genre.create(
		nom: Faker::Book.genre 
		)
end

15.times do 
	Editor.create(
		nom: Faker::Book.publisher
		)
end
	
25.times do 
	Author.create(
		nom: Faker::Book.author
		date_publication: Faker::Date.between(from:January 2000, to:January 2025)
		pays: Faker::Address.country
		)
end

30.times do 
	Book.create(
		titre: Faker::Book.title
		date_de_sortie: Faker::Date. .in_date_period
		auteur: Faker::Book.author
		pages: Faker::String.random
		genre: Faker::Book.genre
		)
end
end