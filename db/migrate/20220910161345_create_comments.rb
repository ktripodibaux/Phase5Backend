class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :User, null: false, foreign_key: true
      t.belongs_to :Post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
