module Types
  FeedbackType =  GraphQL::ObjectType.define do
    name 'FeedbackType'
    description 'Type definition for feedbacks'
    field :id, !types.ID
    field :company_token, !types.String
    field :number, !types.Int
    field :priority, !types.Int
  end
end
