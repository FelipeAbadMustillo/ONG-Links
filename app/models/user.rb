class User < ApplicationRecord
  include Clearance::User

  has_many :follows
  has_many :organizations, through: :follows
  has_many :ratings
  has_many :organizations, through: :ratings
  has_many :appointments
  has_many :posts, through: :appointments
  has_and_belongs_to_many :posts

  validates :nombreUsu,:apellidoUsu,:edad, presence: {message: "Este campo es obligatorio"}
  validates :telUsu, length: {in:10..13, message: "Ese número de telefono no es valido"}, allow_nil: true
  validates :nombreUsu, :apellidoUsu, :ocupacion, :localidadUsu, length: {maximum: 100,  message: "El valor puesto es demasiado largo"}
  validates :edad, numericality: {only_integer: true, message:"El campo es numérico"}
  validates :edad, numericality: {greater_than: 12, message:"Tenes que ser mayor de 12 años"}
  validates :edad, numericality: {less_than: 100, message:"Tenes que ser menor a 100  años para poder realizar trabajos solidarios"}

  mount_uploader :ftUsu, ImgMngrUploader
end
