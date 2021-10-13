# frozen_string_literal: true

module Mutations
  module Users
    class UpdateUser < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :params, GraphQL::Types::JSON, required: true
      field :user, Types::UserType, null: false

      def resolve(id:, params:)
        user = User.find_by(id: id)
        user.update(params) if user

        begin
          { user: user }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}: #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end
end
