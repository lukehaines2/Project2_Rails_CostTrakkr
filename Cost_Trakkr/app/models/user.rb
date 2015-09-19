class User < ActiveRecord::Base
  has_many :events
  has_many :payments, through: :events
end
