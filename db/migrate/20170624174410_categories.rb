class Categories < ActiveRecord::Migration[5.0]
  def change
    create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    end
  end
end
