class Post < ApplicationRecord
  belongs_to :organization
  has_many :appointments
  has_many :users, through: :appointments
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :users
  #falta poner relacion rating con ong y relacion favoritos con post, mas tarde lo vere
end
