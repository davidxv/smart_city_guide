class CreatePlannings < ActiveRecord::Migration
  def change
    create_table :plannings do |t|
      t.references  :activity_object
      t.date        :start_date
      t.date        :end_date
      t.integer     :duration
      t.text        :items
      t.text        :days

      t.timestamps
    end
    add_index :plannings, :activity_object_id
  end
end
