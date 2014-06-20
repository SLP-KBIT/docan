class CreateOldProceedings < ActiveRecord::Migration
  def change
    create_table :old_proceedings do |t|
      t.integer :version
      t.integer :proceeding_id

      t.timestamps
    end
  end
end
