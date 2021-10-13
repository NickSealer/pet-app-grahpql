# frozen_string_literal: true

module Mutations
  module Users
    class Create < Mutations::BaseMutation
      argument :params, Types::Inputs::UserInputType, required: true
      field :user, Types::UserType, null: false

      def resolve(params:)
        user_params = Hash params
        user = User.create(user_params)

        begin
          { user: user }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}: #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end
end
