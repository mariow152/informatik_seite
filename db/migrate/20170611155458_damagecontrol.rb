class Damagecontrol < ActiveRecord::Migration[5.0]
  def change
    drop_table :categories_games
    create_join_table :games, :categories
  end
end
