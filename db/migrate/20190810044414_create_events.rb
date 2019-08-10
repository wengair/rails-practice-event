class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :pic
      t.date :start_time
      t.date :end_time
      t.integer :capacity
      t.string :place
      t.string :link

      t.timestamps
    end
  end
end
