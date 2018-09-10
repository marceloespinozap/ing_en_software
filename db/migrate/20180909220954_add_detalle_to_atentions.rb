class AddDetalleToAtentions < ActiveRecord::Migration[5.1]
  def change
      add_column :attentions, :detail, :text

  end
end
