# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # GraphQL resources
    field :create_user, resolver: Mutations::Users::Create
  end
end
