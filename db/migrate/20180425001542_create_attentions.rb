class CreateAttentions < ActiveRecord::Migration[5.1]
  def change
    create_table :attentions do |t|
      t.date :attention_date
      t.string :attention_time
      t.string :description

      t.timestamps
    end
  end
end
