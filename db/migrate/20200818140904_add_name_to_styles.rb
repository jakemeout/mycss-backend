class AddNameToStyles < ActiveRecord::Migration[6.0]
  def change
    add_column :styles, :name, :string
  end
end
