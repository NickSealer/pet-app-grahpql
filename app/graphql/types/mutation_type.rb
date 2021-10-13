# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # GraphQL resources
    field :create_user, resolver: Mutations::Users::Create
    field :update_user, resolver: Mutations::Users::Update
  end
end
