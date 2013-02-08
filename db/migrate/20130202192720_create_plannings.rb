class CreatePlannings < ActiveRecord::Migration
  def change
    create_table :plannings do |t|
      t.references :activity_object
      t.references :trip

      t.timestamps
    end
    add_index :plannings, :activity_object_id
    add_index :plannings, :trip_id
  end
end
