class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
  	remove_column :clients, :preexistence, :string

  end
end
