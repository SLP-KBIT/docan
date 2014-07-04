class CreateOldProceedings < ActiveRecord::Migration
  def change
    create_table :old_proceedings do |t|
      t.text :title
      t.text :content
      t.integer :sender_id
      t.integer :project_id
      t.datetime :date
      t.text :type_id
      t.integer :version
      t.integer :proceedint_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
