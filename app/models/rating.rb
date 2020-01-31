class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  validates :cant, presence: {message: "Tenes que poner un valor en el campo de rating!"}
  validates :cant, numericality: {greater_than: 0, message:"Tiene quen ser un numero entero"}
  validates :cant, numericality: {less_than: 5.1, message:"Tiene que ser un numero entre 0 y 5"}
end
