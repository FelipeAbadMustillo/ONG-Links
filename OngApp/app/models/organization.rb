class Organization < ApplicationRecord
  has_many: posts, dependent: :delete_all
  has_many: follows
  has_many: users, through: :follows
  has_many: ratings
  has_many: users, through: :ratings
end
