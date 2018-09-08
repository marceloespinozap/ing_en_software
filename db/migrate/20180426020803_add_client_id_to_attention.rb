class AddClientIdToAttention < ActiveRecord::Migration[5.1]
  def change
    add_reference :attentions, :client, foreign_key: { on_delete: :cascade }
  end
end
