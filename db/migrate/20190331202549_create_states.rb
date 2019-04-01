class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :device
      t.string :os
      t.integer :memory
      t.integer :storage
      t.references :feedback, foreign_key: true

      t.timestamps
    end
  end
end
