namespace :db do
  desc "Fill database with sample data"
  task :guidedata => [ 'db:populate:reload', :read_environment, :create_trips, :create_guides, :create_routes, :create_places, :create_plannings, :create_diaries]

	desc "INTERNAL: read needed environment data and setup variables"
  task :read_environment => :environment do
    require 'forgery'

    # @SS_BASE_PATH = Gem::Specification.find_by_name('social_stream-base').full_gem_path
    # @LOGOS_PATH = File.join(@SS_BASE_PATH, 'lib', 'logos')
    # @LOGOS_TOTAL = (ENV["LOGOS_TOTAL"] || 12).to_i
    # @USERS = (ENV["USERS"] || 9).to_i
    # @GROUPS = (ENV["GROUPS"] || 10).to_i
    # if ENV["HARDCORE"].present?
    #   @USERS = 999
    #   @GROUPS = 1000
    #   puts "Hardcore mode: ON (May the Force be with you brave Padawan)"
    # end
    # if @USERS < 9
    #   @USERS = 9
    #   puts "WARNING: There should be at least 10 users (Demo user and 9 more). Changing USERS to 9."
    # end
    # if @GROUPS < 10
    #   @GROUPS = 10
    #   puts "WARNING: There should be at least 10 groups. Changing GROUPS to 10."
    # end
  end

  # TRIPS
  desc "Create trips"
  task :create_trips => :read_environment do
  	puts 'Trip population'
  	trips_start = Time.now

  	demo = Actor.find_by_slug('demo')
  	Trip.create :title					=> "Toledo",
  							:author_id 			=> demo.id,
  							:owner_id				=> demo.id,
  							:user_author_id	=> demo.id,
  							:relation_ids		=> Array(Relation::Public.instance.id)

  	trips_end = Time.now
  	puts '	-> ' + (trips_end - trips_start).round(4).to_s + 's'
  end


  # GUIDES
  desc "Create guides"
  task :create_guides => :read_environment do
  	puts 'Guide population'
  	guides_start = Time.now

  	demo = Actor.find_by_slug('demo')
  	Guide.create 	:title					=> "Basic",
  								:trip_id				=> Trip.first.id,
  								:author_id 			=> demo.id,
  								:owner_id				=> demo.id,
  								:user_author_id	=> demo.id,
  								:relation_ids		=> Array(Relation::Public.instance.id)

  	guides_end = Time.now
  	puts '	-> ' + (guides_end - guides_start).round(4).to_s + 's'
  end


  # ROUTES
  desc "Create routes"
  task :create_routes => :read_environment do
  	puts 'Route population'
  	routes_start = Time.now

  	demo = Actor.find_by_slug('demo')
  	Route.create 	:title					=> "The leyends of Toledo",
  								:trip_id				=> Trip.first.id,
  								:guide_id				=> Guide.first.id,
  								:author_id 			=> demo.id,
  								:owner_id				=> demo.id,
  								:user_author_id	=> demo.id,
  								:relation_ids		=> Array(Relation::Public.instance.id)

  	routes_end = Time.now
  	puts '	-> ' + (routes_end - routes_start).round(4).to_s + 's'
  end


  # PLACES
  desc "Create places"
  task :create_places => :read_environment do
  	puts 'Place population'
  	places_start = Time.now

  	demo = Actor.find_by_slug('demo')
  	Place.create 	:title					=> "Plaza Zocodover",
  								:streetAddress	=> "Plaza Zocodover",
  								:locality				=> "Toledo",
  								:region					=> "Castile-La Mancha",
  								:postalCode			=> "45001",
  								:country				=> "Spain",
  								:phone_number		=> "",
  								:url						=> "",
  								:trip_ids				=> Trip.first.id,
  								:guide_ids			=> Guide.first.id,
  								:route_ids			=> "",
  								:author_id 			=> demo.id,
  								:owner_id				=> demo.id,
  								:user_author_id	=> demo.id,
  								:relation_ids		=> Array(Relation::Public.instance.id)

  	Place.create 	:title					=> "Cathedral of Toledo",
  								:streetAddress	=> "Calle Cardenal Cisneros",
  								:locality				=> "Toledo",
  								:region					=> "Castile-La Mancha",
  								:postalCode			=> "45002",
  								:country				=> "Spain",
  								:phone_number		=> "925 22 22 41",
  								:url						=> "http://www.catedralprimada.es/",
  								:trip_ids				=> Trip.first.id,
  								:guide_ids			=> Guide.first.id,
  								:route_ids			=> "",
  								:author_id 			=> demo.id,
  								:owner_id				=> demo.id,
  								:user_author_id	=> demo.id,
  								:relation_ids		=> Array(Relation::Public.instance.id)

  	Place.create 	:title					=> "Alcazar of Toledo",
  								:streetAddress	=> "Calle del General Moscardo, 4",
  								:locality				=> "Toledo",
  								:region					=> "Castile-La Mancha",
  								:postalCode			=> "45001",
  								:country				=> "Spain",
  								:phone_number		=> "925 22 16 73",
  								:url						=> "",
  								:trip_ids				=> Trip.first.id,
  								:guide_ids			=> Guide.first.id,
  								:route_ids			=> "",
  								:author_id 			=> demo.id,
  								:owner_id				=> demo.id,
  								:user_author_id	=> demo.id,
  								:relation_ids		=> Array(Relation::Public.instance.id)

  	places_end = Time.now
  	puts '	-> ' + (places_end - places_start).round(4).to_s + 's'
  end


  # PLANNINGS
  desc "Create plannings"
  task :create_plannings => :read_environment do
  	puts 'Planning population'
  	plannings_start = Time.now
  	plannings_stop = Time.now
  	puts '	-> ' + (plannings_stop - plannings_start).round(4).to_s + 's'
  end

  # DIARIES
  desc "Create diaries"
  task :create_diaries => :read_environment do
  	puts 'Diary population'
  	diaries_start = Time.now

  	demo = Actor.find_by_slug('demo')
  	Diary.create 	:title		=> "My trip around Toledo",
  								:trip_id 	=> Trip.first.id,
  								:author_id 			=> demo.id,
  								:owner_id				=> demo.id,
  								:user_author_id	=> demo.id,
  								:relation_ids		=> Array(Relation::Public.instance.id)

  	diaries_stop = Time.now
  	puts '	-> ' + (diaries_stop - diaries_start).round(4).to_s + 's'
  end

end

