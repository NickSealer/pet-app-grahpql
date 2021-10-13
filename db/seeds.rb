# frozen_string_literal: true

require 'faker'

def create_users
  10.times do
    User.create(
      nickname: Faker::Games::ElderScrolls.jewelry,
      first_name: Faker::Games::ElderScrolls.first_name,
      last_name: Faker::Games::ElderScrolls.last_name,
      identification: Faker::IDNumber.valid,
      email: Faker::Internet.safe_email,
      birthdate: Faker::Date.birthday(min_age: 18, max_age: 500),
      phone_number: Faker::PhoneNumber.phone_number,
      password: Faker::Internet.password
    )
  end
end

def create_pets
  20.times do
    Pet.create!(
      name: Faker::Creature::Cat.name,
      age: Faker::Number.number(digits: 3),
      color: Faker::Creature::Bird.color,
      species: Faker::Games::ElderScrolls.creature,
      user_id: User.all.sample.id
    )
  end
end

create_users if User.count < 1
create_pets if Pet.count < 1
