module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

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

    field :quotes, [Types::QuoteType], null:true,
      description: "Returns a list of all quotes"

    def quotes
      Quote.all
    end

  end
end
