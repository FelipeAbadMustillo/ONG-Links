class Post < ApplicationRecord
  belongs_to :organization
  has_many :appointments, dependent: :delete_all
  has_many :users, through: :appointments
  has_and_belongs_to_many :users
  
  #faltan las validaciones
end
