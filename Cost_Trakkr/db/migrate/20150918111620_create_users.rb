class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :budget
      t.string :debts

      t.timestamps null: false
    end
  end
end
