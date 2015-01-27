class RemoveCol < ActiveRecord::Migration
  def change
	remove_column :dairies,:gymset_id
	remove_column :attempts,:gymset_id
	add_column 	 :attempts,:dairy_id,:belongs_to
  end
end
