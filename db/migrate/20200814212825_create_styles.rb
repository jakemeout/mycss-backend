class CreateStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.string :properties
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
