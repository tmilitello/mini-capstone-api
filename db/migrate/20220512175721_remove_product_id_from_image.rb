class RemoveProductIdFromImage < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :product_id, :integer
  end
end
