class Professional < ApplicationRecord
	has_many :attentions
	belongs_to :user
	has_one :specialty
	#validates :specialty, presence: true
	#validates :start_contract, presence:{ message: "debe ingresar inicio de contrato" }
	#validates :specialty, length: { minimum: 5 },length: { maximum: 20 }, presence: true
	#validates :user_id, uniqueness: { is: true, message:"d" } , presence: true
end
