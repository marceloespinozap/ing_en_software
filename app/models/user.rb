class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable
  has_one :client
  accepts_nested_attributes_for :client
  has_one :professional
  accepts_nested_attributes_for :professional

  
  validates :nombre, presence: true,length: { minimum: 2}, format: { with: /[A-Za-z]/ , message: "solo puede contener letras." }

  validates :fecha_nacimiento, presence: true
  validate :fecha_de_nacimiento_debe_ser_en_pasado
  
  validates :direccion, presence: true,length: { minimum: 5}
  
  validates :numero_contacto, presence: true, length: { is: 9, message: "no cumple con los 9 digitos requeridos."}, numericality: { only_integer: true }
  
  validates :email, presence: true,uniqueness: true
  
  validates :password, presence: true,confirmation: true
  
  def fecha_de_nacimiento_debe_ser_en_pasado
  	if fecha_nacimiento.present? && fecha_nacimiento > Date.today
      errors.add(:fecha_nacimiento, "debe ser anterior a la fecha de hoy")
    end
end
end