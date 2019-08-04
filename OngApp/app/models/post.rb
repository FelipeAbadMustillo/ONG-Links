class Post < ApplicationRecord
  belongs_to :organization
  has_many :appointments
  has_many :users, through: :appointments
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :users

  #faltan las validaciones 
end
