namespace :db do
  namespace :populate do

    desc "Fill SCG database with sample data"
    task :create => [ 'create:trips', 'create:guides', 'create:routes', 'create:places', 'create:plannings', 'create:diaries']

    namespace :create do

      # TRIPS
      desc "Create trips"
      task :trips => :read_environment do
        puts 'Trip population'
        trips_start = Time.now

        demo = Actor.find_by_slug('demo')
        Trip.create :title          => "Toledo",
                    :author_id      => demo.id,
                    :owner_id       => demo.id,
                    :user_author_id => demo.id,
                    :relation_ids   => Array(Relation::Public.instance.id)

        trips_end = Time.now
        puts '  -> ' + (trips_end - trips_start).round(4).to_s + 's'
      end


      # GUIDES
      desc "Create guides"
      task :guides => :read_environment do
        puts 'Guide population'
        guides_start = Time.now

        demo = Actor.find_by_slug('demo')
        Guide.create  :title          => "Basic",
                      :trip_id        => Trip.first.id,
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        guides_end = Time.now
        puts '  -> ' + (guides_end - guides_start).round(4).to_s + 's'
      end


      # ROUTES
      desc "Create routes"
      task :routes => :read_environment do
        puts 'Route population'
        routes_start = Time.now

        demo = Actor.find_by_slug('demo')
        Route.create  :title          => "The leyends of Toledo",
                      :trip_id        => Trip.first.id,
                      :guide_id       => Guide.first.id,
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        routes_end = Time.now
        puts '  -> ' + (routes_end - routes_start).round(4).to_s + 's'
      end


      # PLACES
      desc "Create places"
      task :places => :read_environment do
        puts 'Place population'
        places_start = Time.now

        demo = Actor.find_by_slug('demo')
        Place.create  :title          => "Plaza Zocodover",
                      :streetAddress  => "Plaza Zocodover",
                      :locality       => "Toledo",
                      :region         => "Castile-La Mancha",
                      :postalCode     => "45001",
                      :country        => "Spain",
                      :phone_number   => "",
                      :url            => "",
                      :trip_ids       => Trip.first.id,
                      :guide_ids      => Guide.first.id,
                      :route_ids      => "",
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        Place.create  :title          => "Cathedral of Toledo",
                      :streetAddress  => "Calle Cardenal Cisneros",
                      :locality       => "Toledo",
                      :region         => "Castile-La Mancha",
                      :postalCode     => "45002",
                      :country        => "Spain",
                      :phone_number   => "925 22 22 41",
                      :url            => "http://www.catedralprimada.es/",
                      :trip_ids       => Trip.first.id,
                      :guide_ids      => Guide.first.id,
                      :route_ids      => "",
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        Place.create  :title          => "Alcazar of Toledo",
                      :streetAddress  => "Calle del General Moscardo, 4",
                      :locality       => "Toledo",
                      :region         => "Castile-La Mancha",
                      :postalCode     => "45001",
                      :country        => "Spain",
                      :phone_number   => "925 22 16 73",
                      :url            => "",
                      :trip_ids       => Trip.first.id,
                      :guide_ids      => Guide.first.id,
                      :route_ids      => "",
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        places_end = Time.now
        puts '  -> ' + (places_end - places_start).round(4).to_s + 's'
      end


      # PLANNINGS
      desc "Create plannings"
      task :plannings => :read_environment do
        puts 'Planning population'
        plannings_start = Time.now
        plannings_stop = Time.now
        puts '  -> ' + (plannings_stop - plannings_start).round(4).to_s + 's'
      end

      # DIARIES
      desc "Create diaries"
      task :diaries => :read_environment do
        puts 'Diary population'
        diaries_start = Time.now

        demo = Actor.find_by_slug('demo')
        Diary.create  :title    => "My trip around Toledo",
                      :trip_id  => Trip.first.id,
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        diaries_stop = Time.now
        puts '  -> ' + (diaries_stop - diaries_start).round(4).to_s + 's'
      end
    end
  end
end

