class CreateTestTables < ActiveRecord::Migration[5.1]
  def change
    create_table :test_tables do |t|
      t.boolean :test_field

      t.timestamps
    end
  end
end
