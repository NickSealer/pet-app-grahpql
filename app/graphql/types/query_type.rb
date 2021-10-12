# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # RESTful resources
    field :users, resolver: Queries::Users::Index
    field :user, resolver: Queries::Users::Show

    field :pets, resolver: Queries::Pets::Index
    field :pet, resolver: Queries::Pets::Show
  end
end
