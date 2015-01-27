class CreateAgain < ActiveRecord::Migration
	def change
        create_table :exercises_users, :id => false do |t| 
            t.integer :exercise_id
            t.integer :user_id
            t.date  :when
            t.boolean :done
        end
        add_index :exercises_users,[:exercise_id,:user_id]
    end 
end
