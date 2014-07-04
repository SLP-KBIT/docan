class CreateMemberInfos < ActiveRecord::Migration
  def change
    create_table :member_infos do |t|
      t.integer :member_id
      t.text :student_number
      t.text :phone_number
      t.datetime :birthday
      t.text :position
      t.text :twitter_account
      t.text :labo
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
