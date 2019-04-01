class Feedback < ApplicationRecord
  has_one :state
  enum priority: %i[minor, major, critical]
end
