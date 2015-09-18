class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :location
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
