class Client < ApplicationRecord
	has_many :attentions
	has_many :preexisteneclients
	belongs_to :user
   validates :user_id, presence: true, allow_blank: false, uniqueness: { message: "valor repetido" }  
   validates :prevision, presence:{ message: "debe ingresar este dato" }
#validates :prevision, length: { minimum: 5 }
#validates :prevision, length: { maximum: 20 }
end
