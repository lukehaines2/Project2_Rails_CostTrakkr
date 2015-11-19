class AddEventIdToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :event, index: true, foreign_key: true
  end
end
