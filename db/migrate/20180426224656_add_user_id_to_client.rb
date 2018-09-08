class AddUserIdToClient < ActiveRecord::Migration[5.1]
  def change
    add_reference :clients, :user, foreign_key: { on_delete: :cascade }

  end
end
