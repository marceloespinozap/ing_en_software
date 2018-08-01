class Attention < ApplicationRecord
has_one :professional
has_one :client

validates :attention_date, presence: true
validate :fecha_de_atencion_debe_ser_en_pasado


validates :attention_time, presence:{ message: "debe hora de atencion"}
validates :description, presence: true


validates :professional_id, presence: true
validates :client_id, presence: true



def fecha_de_atencion_debe_ser_en_pasado
  	if attention_date.present? && attention_date > Date.today
      errors.add(:attention_date,  "debe ser anterior a la fecha de hoy")
    end
end

end
