class AddAltIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :alt_id, :string
  end
end
