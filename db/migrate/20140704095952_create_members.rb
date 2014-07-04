class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.text :account
      t.text :password_digest
      t.text :name
      t.boolean :is_admin
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
