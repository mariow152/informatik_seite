class Sos < ActiveRecord::Migration[5.0]
  def change
    change_table :shopping_cart_items do |t|
      t.remove :quantity
    end
  end
end
