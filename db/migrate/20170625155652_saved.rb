class Saved < ActiveRecord::Migration[5.0]
  def change
    change_table :games do |t|
      t.string :genre
    end
  end
end
