class Attention < ApplicationRecord
has_one :professional
has_one :client


validates :attention_date, presence: true
validate :fecha_de_atencion_debe_ser_en_pasado


validates :attention_time, presence:{ message: "debe hora de atencion"}

validates :attention_date, uniqueness: { scope: [:professional_id, :client_id],message: 'el profesional y el paciente ya tienen una hora agendada este dia ' }
validates :attention_date, presence:{ message: "debe hora de atencion"}

validates :professional_id, presence: true
validates :client_id, presence: true

validates :description, :presence  => { message: "No puede dejarse vacío" }
validates :detail, :presence  => { message: "No puede dejarse vacío" }






def fecha_de_atencion_debe_ser_en_pasado
  	if attention_date.present? && attention_date > Date.today
      errors.add(:attention_date,  "debe ser anterior a la fecha de hoy")
    end
end

end
