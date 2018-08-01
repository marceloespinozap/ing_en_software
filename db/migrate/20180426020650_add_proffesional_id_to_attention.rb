class AddProffesionalIdToAttention < ActiveRecord::Migration[5.1]
  def change
    add_reference :attentions, :professional, foreign_key: true
  end
end
