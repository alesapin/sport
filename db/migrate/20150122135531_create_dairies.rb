class CreateDairies < ActiveRecord::Migration
  def change
    create_table :dairies do |t|
      t.belongs_to :user, index: true
      t.belongs_to :exercise, index: true
      t.integer :attempts
	  t.integer :repeats
      t.float :weight
      t.date :when
      t.boolean :done

      t.timestamps
    end
  end
end
