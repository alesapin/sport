class DropWrongWord < ActiveRecord::Migration
  def change
	drop_table :users_excercises
  end
end
