class Price < ActiveRecord::Migration[5.0]
  def change
    change_table :games do |t|
      t.remove :price
      t.string :price
    end
  end
end
