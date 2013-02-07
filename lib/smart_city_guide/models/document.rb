module SmartCityGuide
  module Models
    module Document
      extend ActiveSupport::Concern

      included do
        attr_accessor :activity_object_property_object_id

        before_validation(:on => :create) do
          set_activity_object
        end
      end

      protected

      def set_activity_object
        return if activity_object_property_object_id.blank?

        activity_object_holders <<
          ActivityObjectProperty::Photo.new(:activity_object_id => activity_object_property_object_id)
      end
    end
  end
end
