class AddPaymentIdToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :payment, index: true, foreign_key: true
  end
end
