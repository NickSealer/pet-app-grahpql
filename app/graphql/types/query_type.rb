# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, [Types::UserType], null: false
    field :pets, [Types::PetType], null: false

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    field :pet, Types::PetType, null: false do
      argument :id, ID, required: true
    end

    # Index RESTful
    def users
      User.all
    end

    # Show RESTful
    def user(id:)
      User.find(id)
    end

    # Index RESTful
    def pets
      Pet.all
    end

    # Show RESTful
    def pet(id:)
      Pet.find(id)
    end
  end
end
