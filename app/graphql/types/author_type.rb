class Types::AuthorType < Types::BaseObject
  description "A quote author"

  field :id, ID, null:false
  field :name, String, null:false
  field :year_of_birth, String, null:true
end