class Payment < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  validate :dont_pay_too_much

  after_save :deduct_money_from_event

  private
    def deduct_money_from_event
      self.event.cost -= self.amount
      self.event.save
    end

    def dont_pay_too_much
      self.errors[:base] << "Don't pay too much" if self.amount > self.event.cost
    end
end
