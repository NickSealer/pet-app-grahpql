# frozen_string_literal: true

module Mutations
  module Pets
    class DeletePet < Mutations::BaseMutation
      argument :id, ID, required: true
      field :pet, Types::PetType, null: false

      def resolve(id:)
        pet = Pet.find_by(id: id)
        pet&.destroy
        { pet: pet }
      end
    end
  end
end
