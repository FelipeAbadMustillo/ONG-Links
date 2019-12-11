class Post < ApplicationRecord
  belongs_to :organization
  has_many :appointments, dependent: :delete_all
  has_many :users, through: :appointments
  has_and_belongs_to_many :users

  mount_uploader :ftPst, ImgMngrUploader
  #faltan las validaciones
end
