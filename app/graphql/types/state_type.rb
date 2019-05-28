module Types
  StateType =  GraphQL::ObjectType.define do
    name 'StateType'
    description 'Type definition for states' 
    field :id, !types.ID
    field :device, !types.String
    field :os, !types.String
    field :memory, !types.Int
    field :storage, !types.Int
    field :feedback_id, !types.ID
  end
end