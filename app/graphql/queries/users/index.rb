# frozen_string_literal: true

module Queries
  module Users
    class Index < Queries::BaseQuery
      type [Types::UserType], null: false

      def resolve
        User.all
      end
    end
  end
end
