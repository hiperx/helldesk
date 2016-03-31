class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.boolean :closed
      t.integer :priority

      t.timestamps null: false
    end
  end
end
