class Event < ActiveRecord::Base
  has_many :users
  has_many :payments, through: :users
end
