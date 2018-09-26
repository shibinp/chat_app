class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :username
      t.text :body
      t.datetime :created_at

      t.timestamps
    end
  end
end
