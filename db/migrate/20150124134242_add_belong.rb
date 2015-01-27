class AddBelong < ActiveRecord::Migration
  def change
	add_column :dairies, :gymset_id,:integer
  end
end
