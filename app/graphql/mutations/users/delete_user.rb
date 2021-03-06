# frozen_string_literal: true

module Mutations
  module Users
    class DeleteUser < Mutations::BaseMutation
      argument :id, ID, required: true
      field :user, Types::UserType, null: false

      def resolve(id:)
        user = User.find_by(id: id)
        user&.destroy
        { user: user }
      end
    end
  end
end
