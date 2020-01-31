class Organization < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :delete_all
  has_many :follows
  has_many :users, through: :follows
  has_many :ratings
  has_many :users, through: :ratings

  #faltan algunas validaciones para el update
  validates :nombreOng, :email, presence: {message: "Este campo es obligatorio"}
  validates :tel, length: {in:10..13, message: "Ese número de telefono no es valido"}, allow_nil: true
  validates :nombreOng, :desc, length: {maximum: 100,  message: "El valor puesto es demasiado largo"}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Ese no es un mail valido" }, uniqueness: {message: "Ese mail ya esta tomado"}

  mount_uploader :ftOng, ImgMngrUploader
  mount_uploader :bnnr, ImgMngrUploader
end
