class Organization < ApplicationRecord
  has_many: posts, dependent: :delete_all
  has_many: follows
  has_many: users, through: :follows
  #falta poner relacion rating con ong y relacion favoritos con post, mas tarde lo vere
end
