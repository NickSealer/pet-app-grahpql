# frozen_string_literal: true

module Queries
  module Users
    class Show < Queries::BaseQuery
      type Types::UserType, null: false
      argument :id, ID, required: true

      def resolve(id:)
        User.find_by(id: id)
      end
    end
  end
end
