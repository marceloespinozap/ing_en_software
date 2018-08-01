class AddDatosPersonalesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nombre, :string
    add_column :users, :fecha_nacimiento, :date
    add_column :users, :numero_contacto, :integer
    add_column :users, :direccion, :string
  end
end
