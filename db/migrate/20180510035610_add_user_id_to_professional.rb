class AddUserIdToProfessional < ActiveRecord::Migration[5.1]
  def change
  	    add_reference :professionals, :user, foreign_key: { on_delete: :cascade }

  end
end
