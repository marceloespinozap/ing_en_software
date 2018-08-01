class AddPreexistenceIdToPreexistenceclient < ActiveRecord::Migration[5.1]
  def change
    add_reference :preexistenceclients, :preexistence, foreign_key: true
  end
end
