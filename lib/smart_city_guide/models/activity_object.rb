module SmartCityGuide
	module Models
		module ActivityObject
			extend ActiveSupport::Concern

			included do
				def photos
					photo_objects = object_properties.
						where('activity_object_properties.type' => 'ActivityObjectProperty::Photo')

					objects = Array.new
					photo_objects.each do |a|
						objects << a.try(:document)
					end
					objects
				end

				def photo
					@photo ||= build_photo
				end

				def build_photo
					Document.new(:activity_object_property_object_id => self.id,
								 :owner_id => self.owner_id)
				end

			end
		end
	end
end
