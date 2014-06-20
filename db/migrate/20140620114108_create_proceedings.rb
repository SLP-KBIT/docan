class CreateProceedings < ActiveRecord::Migration
  def change
    create_table :proceedings do |t|
      t.text :title
      t.text :content
      t.integer :sender_id
      t.integer :project_id
      t.datetime :date
      t.text :type_id
      t.integer :version
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
