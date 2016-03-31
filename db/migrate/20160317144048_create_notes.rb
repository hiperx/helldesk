class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body
      t.belongs_to :User, index: true, foreign_key: true
      t.belongs_to :Issue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
