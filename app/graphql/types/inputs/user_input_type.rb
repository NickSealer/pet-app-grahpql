# frozen_string_literal: true

module Types
  module Inputs
    class UserInputType < Types::BaseInputObject
      argument :first_name, String, required: true
      argument :last_name, String, required: true
      argument :email, String, required: true
      argument :nickname, String, required: true
      argument :age, Integer, required: true
      argument :phone_number, String, required: true
      argument :birthdate, GraphQL::Types::ISO8601Date, required: true
    end
  end
end
