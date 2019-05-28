module Types
  byebug
  FeedbackType =  GraphQL::ObjectType.define do
    name 'FeedbackType'
    description 'Type definition for feedbacks'
    field :id, !types.ID
    field :company_token, !types.String
    field :number, !types.Integer
    field :priority, !types.Integer
  end
end
