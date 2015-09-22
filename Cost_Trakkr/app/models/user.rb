class User < ActiveRecord::Base
  has_many :events
  has_many :payments

  validates :name, presence: true
end
