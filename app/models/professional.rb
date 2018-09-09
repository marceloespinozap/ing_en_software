class Professional < ApplicationRecord
	has_many :attentions
	belongs_to :user
	has_one :specialty
	validates :start_contract, presence:{ message: "debe ingresar inicio de contrato" }

   validates_numericality_of :type_contract, only_integer: true


	#validates :user_id, uniqueness: { is: true, message:"ya existe un perfil profesional creado" } , presence: true

end
