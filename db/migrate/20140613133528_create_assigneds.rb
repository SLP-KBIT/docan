class CreateAssigneds < ActiveRecord::Migration
  def change
    create_table :assigneds do |t|
      t.integer :member_id
      t.integer :project_id
      t.boolean :is_leader
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
