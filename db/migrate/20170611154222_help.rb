class Help < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :genre
    end
  end
end
