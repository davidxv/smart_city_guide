class CreatePlannings < ActiveRecord::Migration
  def change
    create_table :plannings do |t|
      t.references :activity_object

      t.timestamps
    end
    add_index :plannings, :activity_object_id
  end
end
