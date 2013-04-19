# encoding: utf-8
namespace :db do
  namespace :populate do

    desc "Fill SCG database with sample data"
    task :create => [ 'create:trips', 'create:guides', 'create:routes', 'create:pois', 'create:photos', 'create:plannings', 'create:diaries']

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

        Trip.create :title          => "London",
                    :author_id      => demo.id,
                    :owner_id       => demo.id,
                    :user_author_id => demo.id,
                    :relation_ids   => Array(Relation::Public.instance.id)

        Trip.create :title          => "San Francisco",
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
        Guide.create  :title          => "Basic guide",
                      :trip_id        => Trip.first.id,
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        Guide.create  :title          => "Toledo in 24 hours",
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

        Route.create  :title          => "Toledo Templar",
                      :trip_id        => Trip.first.id,
                      :guide_id       => Guide.first.id,
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        Route.create  :title          => "Magical Journey",
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
      desc "Create POIs"
      task :pois => :read_environment do
        puts 'POI population'
        places_start = Time.now

        demo = Actor.find_by_slug('demo')
        Place.create  :title          => "Plaza Zocodover",
                      :description    => "Plaza de Zocodover (Zocodover Square) is the main square of Toledo, and its very heart. It was the ancient Arabian market (zocodover means \"place of animals\"). It's an ideal place to take a break after visiting the Alcazar or the Cathedral and also a hub for catching the bus or riding a tourist train or just take a seat a watch the life goes by... This square is near the highest point of the old city, in the north-east corner, just a few metres from the Alcazar. There are a number of cafes, and the buildings above appear to be mainly offices. Traditional markets, such as the famous \"Martes\" (Tuesday market) still take place in this square. Great bullfights, fiestas and macabre executions have also taken place here. During the Muslim era this was the location of the old cattle market (\"Tulaytula\") built on top of the ruins of the Roman wall.",
                      :streetAddress  => "Plaza Zocodover",
                      :locality       => "Toledo",
                      :region         => "Castile-La Mancha",
                      :postalCode     => "45001",
                      :country        => "Spain",
                      :phone_number   => "",
                      :url            => "",
                      :trip_ids       => Trip.first.id,
                      :guide_ids      => Array[Guide.first.id, Guide.find(2).id],
                      :route_ids      => Array[Route.first.id, Route.find(2).id, Route.find(3).id], 
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        Place.create  :title          => "Cathedral of Toledo",
                      :description    => "The Primate Cathedral of Saint Mary of Toledo (Spanish: Catedral Primada Santa María de Toledo) is a Roman Catholic cathedral in Toledo, Spain, see of the Metropolitan Archdiocese of Toledo. The cathedral of Toledo is one of the three 13th-century High Gothic cathedrals in Spain and is considered, in the opinion of some authorities, to be the magnum opus[1] of the Gothic style in Spain. It was begun in 1226 under the rule of Ferdinand III and the last Gothic contributions were made in the 15th century when, in 1493, the vaults of the central nave were finished during the time of the Catholic Monarchs. It was modeled after the Bourges Cathedral, although its five naves plan is a consequence of the constructors' intention to cover all of the sacred space of the former city mosque with the cathedral, and of the former sahn with the cloister. It also combines some characteristics of the Mudéjar style, mainly in the cloister, and with the presence of multifoiled arches in the triforium. The spectacular incorporation of light and the structural achievements of the ambulatory vaults are some of its more remarkable aspects. It is built with white limestone from the quarries of Olihuelas, near Toledo.",
                      :streetAddress  => "Calle Cardenal Cisneros",
                      :locality       => "Toledo",
                      :region         => "Castile-La Mancha",
                      :postalCode     => "45002",
                      :country        => "Spain",
                      :phone_number   => "925 22 22 41",
                      :url            => "http://www.catedralprimada.es/",
                      :trip_ids       => Trip.first.id,
                      :guide_ids      => Array[Guide.first.id, Guide.find(2).id],
                      :route_ids      => Array[Route.first.id, Route.find(2).id, Route.find(3).id],
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        Place.create  :title          => "Alcazar of Toledo",
                      :description    => "The Alcázar of Toledo is a stone fortification located in the highest part of Toledo, Spain. Once used as a Roman palace in the 3rd century, it was restored under Charles I and Philip II of Spain in the 1540s. In 1521, Hernán Cortés was received by Charles I at the Alcázar, following Cortes' conquest of the Aztecs. Spanish Civil War During the Spanish Civil War, Colonel José Moscardó Ituarte held the building against overwhelming Spanish Republican forces in the Siege of the Alcázar. The incident became a central piece of Spanish Nationalist lore, especially the story of Moscardó's son Luis. The Republicans took 16-year old Luis hostage, and demanded that the Alcázar be surrendered or they would kill him. Luis told his father, \"Surrender or they will shoot me.\" His father replied, \"Then commend your soul to God, shout 'Viva Cristo Rey' and die like a hero.",
                      :streetAddress  => "Calle del General Moscardó, 4",
                      :locality       => "Toledo",
                      :region         => "Castile-La Mancha",
                      :postalCode     => "45001",
                      :country        => "Spain",
                      :phone_number   => "925 22 16 73",
                      :url            => "",
                      :trip_ids       => Trip.first.id,
                      :guide_ids      => Array[Guide.first.id, Guide.find(2).id],
                      :route_ids      => Array[Route.first.id, Route.find(2).id, Route.find(3).id],
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        places_end = Time.now
        puts '  -> ' + (places_end - places_start).round(4).to_s + 's'
      end

      desc "Add photos to places"
      task :photos => :read_environment do
        puts 'Photo population'
        photos_start = Time.now

        demo = Actor.find_by_slug('demo')
        guide = ActivityObject.find_by_title('Basic guide').object
        Picture.create  :add_holder_guide_id  => guide.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "guides", "basic.jpg"), "r")

        guide = ActivityObject.find_by_title('Toledo in 24 hours').object
        Picture.create  :add_holder_guide_id  => guide.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "guides", "24hours.jpg"), "r")

        route = ActivityObject.find_by_title('The leyends of Toledo').object
        Picture.create  :add_holder_route_id  => route.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "routes", "leyends.jpg"), "r")

        route = ActivityObject.find_by_title('Toledo Templar').object
        Picture.create  :add_holder_route_id  => route.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "routes", "templars.jpg"), "r")

        route = ActivityObject.find_by_title('Magical Journey').object
        Picture.create  :add_holder_route_id  => route.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "routes", "magic.jpg"), "r")

        place = ActivityObject.find_by_title('Plaza Zocodover').object
        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "zocodover", "zocodover1.jpg"), "r")

        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "zocodover", "zocodover2.jpg"), "r")

        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "zocodover", "zocodover3.jpg"), "r")

        place = ActivityObject.find_by_title('Cathedral of Toledo').object
        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "catedral", "catedral1.jpg"), "r")

        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "catedral", "catedral2.jpg"), "r")

        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "catedral", "catedral3.jpg"), "r")

        place = ActivityObject.find_by_title('Alcazar of Toledo').object
        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "alcazar", "alcazar1.jpg"), "r")

        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "alcazar", "alcazar2.jpg"), "r")

        Picture.create  :add_holder_place_id  => place.id,
                        :author_id            => demo.id,
                        :owner_id             => demo.id,
                        :user_author_id       => demo.id,
                        :relation_ids         => Array(Relation::Public.instance.id),
                        :file                 => File.open(File.join(Rails.root, "lib", "samples", "places", "alcazar", "alcazar3.jpg"), "r")

        photos_end = Time.now
        puts '  -> ' + (photos_end - photos_start).round(4).to_s + 's'
      end

      # PLANNINGS
      desc "Create plannings"
      task :plannings => :read_environment do
        puts 'Planning population'
        plannings_start = Time.now

        demo = Actor.find_by_slug('demo')
        Planning.create   :title          => "West Coast road trip",
                          :author_id      => demo.id,
                          :owner_id       => demo.id,
                          :user_author_id => demo.id,
                          :relation_ids   => Array(Relation::Public.instance.id),
                          :start_date     => Date.yesterday,
                          :end_date       => Date.tomorrow,
                          :duration       => 3,
                          :items          => "[{'type':'guide','id':'2'},{'type':'place','id':'1'},{'type':'place','id':'3'},{'type':'route','id':'3'},{'type':'guide','id':'1'}]",
                          :days           => "['1':[{'type':'place','id':'3'},{'type':'route','id':'3'}],'2':[{'type':'guide','id':'1'},{'type':'place','id':'1'}],'3':[{'type':'guide','id':'2'}]]"

        Planning.create   :title          => "First time to Madrid",
                          :author_id      => demo.id,
                          :owner_id       => demo.id,
                          :user_author_id => demo.id,
                          :relation_ids   => Array(Relation::Public.instance.id),
                          :start_date     => "",
                          :end_date       => "",
                          :duration       => 1,
                          :items          => "[{'type':'place','id':'2'},{'type':'route','id':'1'}]",
                          :days           => "['1':[{'type':'route','id':'1'},{'type':'place','id':'2'}]]"

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
                      :author_id      => demo.id,
                      :owner_id       => demo.id,
                      :user_author_id => demo.id,
                      :relation_ids   => Array(Relation::Public.instance.id)

        Diary.create  :title    => "My trip around FI-CONTENT",
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

