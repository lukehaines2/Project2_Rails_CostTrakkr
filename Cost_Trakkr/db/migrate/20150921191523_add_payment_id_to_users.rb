class AddPaymentIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :payment, index: true, foreign_key: true
  end
end
