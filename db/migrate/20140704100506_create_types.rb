class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.text :name
      t.text :template
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
