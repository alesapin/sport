class RemoveColumns < ActiveRecord::Migration
  def change
	remove_column :dairies, :attempts
	remove_column :dairies, :repeats
	remove_column :dairies, :weight
  end
end
