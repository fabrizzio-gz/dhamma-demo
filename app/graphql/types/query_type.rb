module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :authors, [Types::AuthorType], null: true,
      description: "Returns a list of all authors"

    def authors
      Author.all
    end

    field :author, Types::AuthorType, null:true,
      description: "Returns an author by ID" do
        argument :id, ID, required: true
      end

    def author(id:)
      Author.find_by(id:)
    end

  end
end
