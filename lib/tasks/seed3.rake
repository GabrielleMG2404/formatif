require 'faker'
namespace :seed3 do 
	task :populate3 => :environment do 

		I18n.locale = :en
		Faker::Config.locale = :en
		5.times do 
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
		nom: Faker::Book.author,
		date_naissance: Faker::Date.birthday,
		pays: Faker::Address.country
		)
		end

		20.times do 
		book = Book.create(
			titre: Faker::Book.title,
			date_de_sortie: Faker::Date.in_date_period,
			author_id: Author.pluck(:id).sample,
			pages: Faker::Number.between(from:100, to:1000),
			genre_id: Genre.pluck(:id).sample,
			editor_id: Editor.pluck(:id).sample
			)
		#debugger
		end
	end
end