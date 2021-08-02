# frozen_string_literal: true

class Pet < ApplicationRecord
  belongs_to :owner, class_name: User.to_s, foreign_key: :user_id
end
