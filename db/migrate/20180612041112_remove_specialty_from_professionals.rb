class RemoveSpecialtyFromProfessionals < ActiveRecord::Migration[5.1]
  def change
    remove_column :professionals, :specialty, :inet
  end
end
