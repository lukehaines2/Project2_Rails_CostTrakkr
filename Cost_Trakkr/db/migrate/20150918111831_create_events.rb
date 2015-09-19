class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :event_id
      t.string :name
      t.date :date
      t.string :location
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
