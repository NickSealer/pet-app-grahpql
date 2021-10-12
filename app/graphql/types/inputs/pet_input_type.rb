# frozen_string_literal: true

module Types
  module Inputs
    class PetInputType < Types::BaseInputObject
      argument :name, String, required: true
      argument :age, String, required: true
      argument :species, String, required: true
      argument :user_id, Integer, required: true
    end
  end
end
