class Reset < ActiveRecord::Migration[5.0]
  def change
    drop_table :categories
    drop_table :categories_games
    change_table :games do |t|
      t.string :category
    end 
  
  end
end
