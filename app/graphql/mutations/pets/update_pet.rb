# frozen_string_literal: true

module Mutations
  module Pets
    class UpdatePet < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :params, GraphQL::Types::JSON, required: true
      field :pet, Types::PetType, null: false

      def resolve(id:, params:)
        pet = Pet.find_by(id: id)
        pet&.update(params)

        begin
          { pet: pet }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}: #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end
end
