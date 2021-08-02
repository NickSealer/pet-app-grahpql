# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  before_save :calculate_age

  has_many :pets, dependent: :destroy

  def calculate_age
    self.age = Time.zone.now.year - birthdate.to_date.year
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
