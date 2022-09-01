class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.belongs_to :Chat, null: false, foreign_key: true
      t.belongs_to :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
