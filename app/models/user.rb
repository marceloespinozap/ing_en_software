class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable
  has_one :client
  accepts_nested_attributes_for :client
  has_one :professional
  accepts_nested_attributes_for :professional


  validates :nombre,  presence:{ message: "debe ingresar un nombre"}
  validates :nombre, length: { minimum: 2, message: "Debe tener a lo menos 2 letras el nombre." }

  validates :nombre, format: { :with =>/\A+[a-zA-Z\s]+\z/, message: "solo puede contener letras." }

  validate :edad_segun_rol


  validates :fecha_nacimiento, presence:{ message: "debe ingresar una fecha de nacimiento"}
  validate :fecha_de_nacimiento_debe_ser_en_pasado

  validates :direccion, presence:{ message: "debe ingresar una direccion"},length: { minimum: 3, message: "la direccion es muy corta."}


  validates :numero_contacto, presence:{ message: "debe ingresar un numero"}, length: { is: 9, message: "no cumple con los 9 digitos requeridos."}, numericality: { only_integer: true, message: "solo ingresar numeros." }

  validates :email, presence:{ message: "debe ingresar un mail"},uniqueness: { message: "este mail ya esta en uso."},  format: { with: URI::MailTo::EMAIL_REGEXP , message: "formato no valido (ejemplo@ejemplo.com)"}

  validates :password, presence:{ message: "debe ingresar una contraseña"},confirmation: true,length: { minimum: 3, message: "la contraseña es muy corta."}

  def fecha_de_nacimiento_debe_ser_en_pasado
  	if fecha_nacimiento.present? && fecha_nacimiento >= Date.today
      errors.add(:fecha_nacimiento, "debe ser anterior a la fecha de hoy")
    end
end


def edad_segun_rol
if fecha_nacimiento.present? && role =="professional" && fecha_nacimiento >= 18.year.ago
          errors.add(:fecha_nacimiento, 'Profesionales deben ser mayores de 18 años.')
  end
if fecha_nacimiento.present?  && fecha_nacimiento < 98.year.ago
          errors.add(:fecha_nacimiento, 'deben estar vivos...')
  end
if fecha_nacimiento.present? && role =="client" && fecha_nacimiento>= 3.year.ago
          errors.add(:fecha_nacimiento, 'clientes deben ser mayores de 3 años.')
  end

end
end
