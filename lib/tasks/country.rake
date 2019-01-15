namespace :country do
 task :start => :environment do
 	 country_data = JSON.parse(File.read('/home/pradeep/Documents/visaApplication/visaapplicationbe/lib/tasks/all_country.json'))
 	 country_data.each do|data|
 	 	Country.find_or_create_by(:name => data['name'],:code => data['code']) 
 	 end

 end
end
