class AddClientIdToPreexistenceclient < ActiveRecord::Migration[5.1]
  def change
    add_reference :preexistenceclients, :client, foreign_key: { on_delete: :cascade }
  end
end
