class AddClientIdToAttention < ActiveRecord::Migration[5.1]
  def change
    add_reference :attentions, :client, foreign_key: true
  end
end
