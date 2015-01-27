class Try2 < ActiveRecord::Migration
	def change
        create_table :users_exercises, :id => false do |t| 
            t.integer :user_id
            t.integer :exercise_id
            t.date  :when
            t.boolean :done
        end
        add_index :users_exercises,[:user_id,:exercise_id]
    end 

end
