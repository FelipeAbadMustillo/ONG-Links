class User < ApplicationRecord
  has_many :follows
  has_many :organizations, through: :follows
  has_many :appointments
  has_many :posts, through: :appointments
  has_and_belongs_to_many :tags
  validates :nombreUsu,:apellidoUsu,:pwdUsu,:edad,:mail, presence: {message: "Este campo es obligatorio"}
  validates :pwdUsu, length: {minimum: 8, too_short: "La contraseña debe tener un minimo de %{count} caracteres"}
  validates :telUsu, length: {in:10..13, message: "Ese número de telefono no es valido"}, allow_nil: true
  validates :nombreUsu, :apellidoUsu, :mail, :ocupacion, :localidadUsu, length: {maximum: 100,  message: "El valor puesto es demasiado largo"}
  validates :edad, numericality: {only_integer: true, message:"El campo es numérico"}
  validates :edad, numericality: {greater_than: 12, message:"Tenes que ser mayor de 12 años"}
  validates :edad, numericality: {less_than: 100, message:"Tenes que ser menor a 100  años para poder realizar trabajos solidarios"}

  #falta poner relacion rating con ong y relacion favoritos con post, mas tarde lo vere
end
