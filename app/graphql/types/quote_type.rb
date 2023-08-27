class Types::QuoteType < Types::BaseObject
  description "An insightful quote"

  field :id, ID, null:false
  field :author, Types::AuthorType, null:false
  field :message, String, null:false
  field :date, GraphQL::Types::ISO8601Date, null:true

end