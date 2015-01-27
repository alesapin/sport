class DropAgain < ActiveRecord::Migration
  def change
	drop_table :users_exercises
  end
end
