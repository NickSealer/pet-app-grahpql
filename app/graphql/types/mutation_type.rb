# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # GraphQL resources
    field :create_user, resolver: Mutations::Users::CreateUser
    field :update_user, resolver: Mutations::Users::UpdateUser
    field :delete_user, resolver: Mutations::Users::DeleteUser

    field :create_pet, resolver: Mutations::Pets::CreatePet
    field :update_pet, resolver: Mutations::Pets::UpdatePet
    field :delete_pet, resolver: Mutations::Pets::DeletePet
  end
end
