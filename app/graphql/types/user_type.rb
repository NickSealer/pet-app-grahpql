module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :provider, String, null: false
    field :uid, String, null: false
    field :encrypted_password, String, null: false
    field :reset_password_token, String, null: true
    field :reset_password_sent_at, GraphQL::Types::ISO8601DateTime, null: true
    field :allow_password_change, Boolean, null: true
    field :remember_created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :confirmation_token, String, null: true
    field :confirmed_at, GraphQL::Types::ISO8601DateTime, null: true
    field :confirmation_sent_at, GraphQL::Types::ISO8601DateTime, null: true
    field :unconfirmed_email, String, null: true
    field :nickname, String, null: true
    field :image, String, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :identification, String, null: true
    field :email, String, null: true
    field :birthdate, GraphQL::Types::ISO8601Date, null: true
    field :age, Integer, null: true
    field :phone_number, String, null: true
    field :human, Boolean, null: true
    field :tokens, GraphQL::Types::JSON, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :pets, [Types::PetType], null: true
    field :pets_count, Integer, null: true
    field :full_name, String, null: true

    def pets_count
      object.pets.size
    end

    def full_name
      object.full_name
    end
  end
end
