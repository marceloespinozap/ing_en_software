class CreateProfessionals < ActiveRecord::Migration[5.1]
  def change
    create_table :professionals do |t|
      t.inet :specialty
      t.date :start_contract
      t.date :end_contract
      t.inet :type_contract

      t.timestamps
    end
  end
end
