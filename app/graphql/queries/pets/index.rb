# frozen_string_literal: true

module Queries
  module Pets
    class Index < Queries::BaseQuery
      type [Types::PetType], null: false

      def resolve
        Pet.all
      end
    end
  end
end
