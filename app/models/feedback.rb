class Feedback < ApplicationRecord
  has_one :state
  enum priority: [:minor, :major, :critical]
end
