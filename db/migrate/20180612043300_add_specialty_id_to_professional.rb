class AddSpecialtyIdToProfessional < ActiveRecord::Migration[5.1]
  def change
    add_reference :professionals, :specialty, foreign_key: true
  end
end
