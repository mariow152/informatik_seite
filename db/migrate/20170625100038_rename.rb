class Rename < ActiveRecord::Migration[5.0]
   def change
     rename_table :cart_items, :shopping_cart_items
   end 
end