DocumentsController.class_eval do
  private

  def allowed_params
    [ :file, :event_property_object_id, :place_property_object_id, :activity_object_property_object_id ]
  end
end
