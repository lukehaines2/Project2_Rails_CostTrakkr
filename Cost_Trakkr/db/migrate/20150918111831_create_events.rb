class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.float :cost

      t.timestamps null: false
    end
  end
end
