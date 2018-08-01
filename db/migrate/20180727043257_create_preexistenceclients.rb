class CreatePreexistenceclients < ActiveRecord::Migration[5.1]
  def change
    create_table :preexistenceclients do |t|

      t.timestamps
    end
  end
end
