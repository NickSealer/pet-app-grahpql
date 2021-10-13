module Types
  class PetType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :age, Integer, null: true
    field :color, String, null: true
    field :species, String, null: true
    field :user_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :owner, Types::UserType, null: false
    field :owner_name, String, null: true

    def owner_name
      object&.owner&.full_name
    end
  end
end
