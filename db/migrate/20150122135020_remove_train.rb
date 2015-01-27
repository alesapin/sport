class RemoveTrain < ActiveRecord::Migration
  def change
	drop_table :exercises_users
  end
end
