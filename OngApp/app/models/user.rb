class User < ApplicationRecord
  has_many :follows
  has_many :organizations, through: :follows
  has_many :appointments
  has_many :posts, through: :appointments
  has_and_belongs_to_many :tags
  #falta poner relacion rating con ong y relacion favoritos con post, mas tarde lo vere
end
