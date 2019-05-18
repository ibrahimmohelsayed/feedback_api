class State < ApplicationRecord
  belongs_to :feedback
  validates_presence_of [:device, :os, :memory], on: :create, message: "can't be blank"
end
