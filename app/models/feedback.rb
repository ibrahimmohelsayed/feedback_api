class Feedback < ApplicationRecord
  has_one :state
  enum priority: [:minor, :major, :critical]
  validates_presence_of [:company_token, :number, :priority], on: :create
end
