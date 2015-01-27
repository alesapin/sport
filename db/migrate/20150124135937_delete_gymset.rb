class DeleteGymset < ActiveRecord::Migration
  def change
	drop_table :gymsets
  end
end
