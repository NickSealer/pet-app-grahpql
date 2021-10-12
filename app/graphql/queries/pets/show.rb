# frozen_string_literal: true

module Queries
  module Pets
    class Show < Queries::BaseQuery
      type Types::PetType, null: false
      argument :id, ID, required: true

      def resolve(id:)
        Pet.find_by(id: id)
      end
    end
  end
end
