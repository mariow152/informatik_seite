class Belongs < ActiveRecord::Migration[5.0]
  def change
    change_table :games do  |s|
      s.remove :category
      s.belongs_to :category
    end
  end
end
