# frozen_string_literal: true

FactoryBot.define do
  factory :pet do
    name { 'MyString' }
    age { 1 }
    color { 'MyString' }
    species { 'MyString' }
    user { nil }
  end
end
