class Fuckedupagain < ActiveRecord::Migration[5.0]
  def change
    drop_table :shopping_cart_items
    create_table :shopping_cart_items do |t|
      t.shopping_cart_item_fields
     
    end
  end
end
