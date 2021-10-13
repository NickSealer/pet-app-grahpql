# frozen_string_literal: true

module Mutations
  module Pets
    class CreatePet < Mutations::BaseMutation
      argument :params, Types::Inputs::PetInputType, required: true
      field :pet, Types::PetType, null: false

      def resolve(params:)
        pet_params = Hash(params)
        pet = Pet.create(pet_params)

        begin
          { pet: pet }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}: #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end
end
