class Professional < ApplicationRecord
	has_many :attentions
	belongs_to :user
	has_one :specialty
	
	validates :start_contract, presence:{ message: "debe ingresar inicio de contrato" }
	validates :end_contract, presence:{ message: "debe ingresar inicio de contrato" }

   validates_numericality_of :type_contract, only_integer: true

  validate :fecha_termino_debe_ser_anterior_a_inicio
validate :fecha_termino_debe_ser_anterior_a_hoy

 

def fecha_termino_debe_ser_anterior_a_hoy
  	if end_contract &&  end_contract <= Date.today
      errors.add(:end_contract, "fecha de termino de contrato no puede ser anterior a  hoy")
    end
end
 def fecha_termino_debe_ser_anterior_a_inicio
  	if   end_contract && start_contract  && (end_contract <= start_contract)
      errors.add(:end_contract, "fecha de termino de contrato debe ser anterior a la fecha de inicio")
    end
end
end
