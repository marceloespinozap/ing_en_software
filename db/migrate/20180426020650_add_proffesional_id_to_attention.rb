class AddProffesionalIdToAttention < ActiveRecord::Migration[5.1]
  def change
    add_reference :attentions, :professional, foreign_key: { on_delete: :cascade }
  end
end
