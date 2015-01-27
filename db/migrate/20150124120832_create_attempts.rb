class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.belongs_to :gymset, index: true
      t.float :weight
      t.integer :repeats
      t.boolean :done

      t.timestamps
    end
  end
end
