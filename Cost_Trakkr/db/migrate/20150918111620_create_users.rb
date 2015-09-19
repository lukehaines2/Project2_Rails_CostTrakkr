class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :name
      t.decimal :budget
      t.decimal :debts

      t.timestamps null: false
    end
  end
end
