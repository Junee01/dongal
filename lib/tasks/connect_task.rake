namespace :connect_task do
	desc 'scheduled connect task'
	task :run => :environment do
		ConnectRequest.request
	end
end
