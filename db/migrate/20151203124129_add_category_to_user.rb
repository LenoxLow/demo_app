class AddCategoryToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
      t.string :category
  end
  end
end
